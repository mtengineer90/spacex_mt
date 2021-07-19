import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:spacex/data/models/mission.dart';
import 'package:spacex/data/repositories/mission_repository.dart';
import 'package:spacex/presentation/bloc/home_bloc.dart';
import 'package:spacex/presentation/bloc/home_events.dart';
import 'package:spacex/presentation/bloc/home_states.dart';

import 'bloc_test.mocks.dart';

@GenerateMocks([MissionRepository])
void main() {
  group('HomeBloc testing', () {
    blocTest(
      'Initialization correct states',
      build: () {
        final repo = MockMissionRepository();
        when(repo.getMissions('', 0)).thenAnswer((_) async => []);
        return HomeBloc(repo);
      },
      act: (HomeBloc bloc) => bloc.add(InitEvent()),
      expect: () => [LoadingState(), CompletedState([])],
    );
    blocTest<HomeBloc, HomeState>(
      'Search timeout correct events',
      build: () {
        final repo = MockMissionRepository();
        when(repo.getMissions('abc', 0)).thenAnswer(
            (_) async => [MissionModel(name: 'name', details: 'details')]);
        return HomeBloc(repo);
      },
      seed: () => LoadedState([]),
      act: (HomeBloc bloc) => bloc.add(TimerElapsedEvent('abc')),
      expect: () => [
        LoadingState(),
        CompletedState([MissionModel(name: 'name', details: 'details')])
      ],
    );
    blocTest<HomeBloc, HomeState>(
      'Search correct events',
      build: () {
        final repo = MockMissionRepository();
        when(repo.getMissions('abc', 0)).thenAnswer(
            (_) async => [MissionModel(name: 'name', details: 'details')]);
        return HomeBloc(repo);
      },
      seed: () => LoadedState([]),
      act: (HomeBloc bloc) => bloc.add(SearchEnteredEvent('abc')),
      wait: const Duration(milliseconds: 400),
      expect: () => [
        LoadingState(),
        CompletedState([MissionModel(name: 'name', details: 'details')])
      ],
    );
    blocTest<HomeBloc, HomeState>(
      'Scroll requests next page',
      build: () {
        final repo = MockMissionRepository();
        when(repo.getMissions('', 1)).thenAnswer(
            (_) async => [MissionModel(name: 'name', details: 'details')]);
        return HomeBloc(repo);
      },
      seed: () => LoadedState([]),
      act: (HomeBloc bloc) => bloc.add(ScrollExtentReachedEvent()),
      expect: () => [
        isA<CompletedState>(),
      ],
    );
  });
}
