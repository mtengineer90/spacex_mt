import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/domain/repositories/mission_repository.dart';
import 'package:spacex/presentation/bloc/home_events.dart';
import 'package:spacex/presentation/bloc/home_states.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IMissionRepository _dataRespoitory;
  late String _searchTerm;
  late int _page;
  Timer? _timer;

  HomeBloc(this._dataRespoitory) : super(LoadingState()) {
    _searchTerm = '';
    _page = 0;
  }

  Stream<HomeState> _initialization() async* {
    yield* _getData;
  }

  Stream<HomeState> _scrollExtent() async* {
    if (state is LoadedState) {
      final _state = (state as LoadedState);
      _page++;
      yield await _dataRespoitory.getMissions(_searchTerm, _page).then(
        (missions) {
          if (missions.length < 10) return CompletedState(_state.missions);
          return LoadedState(
            _state.missions + missions,
          );
        },
      );
    }
  }

  Stream<HomeState> _searchEntered(String searchTerm) async* {
    _timer?.cancel();
    if (searchTerm.isEmpty || searchTerm.length >= 3) {
      _timer = _buildTimer(searchTerm);
    }
  }

  Stream<HomeState> _timerElapsed(String searchTerm) async* {
    _searchTerm = searchTerm;
    _page = 0;
    yield* _getData;
  }

  Timer _buildTimer(String searchTerm) => Timer(
        Duration(milliseconds: 400),
        () => add(
          TimerElapsedEvent(searchTerm),
        ),
      );

  Stream<HomeState> get _getData async* {
    yield LoadingState();
    yield await _dataRespoitory.getMissions(_searchTerm, _page).then(
      (missions) {
        if (missions.length < 10) return CompletedState(missions);
        return LoadedState(missions);
      },
    );
  }

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.when(
      scrollExtentReached: _scrollExtent,
      searchEntered: _searchEntered,
      timerElapsed: _timerElapsed,
      init: _initialization,
    );
  }
}
