import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/presentation/bloc/home_bloc.dart';
import 'package:spacex/presentation/bloc/home_events.dart';
import 'package:spacex/presentation/bloc/home_states.dart';
import 'package:spacex/presentation/widgets/missions_list.dart';
import 'package:spacex/services/service_locator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final inputHeight = 67.0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text('SpaceX Missions',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 3.0, wordSpacing: 3.0),)),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                onChanged: (key) =>
                    locator<HomeBloc>().add(SearchEnteredEvent(key)),
                decoration: InputDecoration(
                  labelText: 'Search Missions...',
                  labelStyle: TextStyle(color: Theme.of(context).primaryColor,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight - inputHeight,
              child: BlocBuilder<HomeBloc, HomeState>(
                  bloc: locator<HomeBloc>()..add(InitEvent()),
                  builder: (context, state) {
                    return state.when(
                      loading: () => const Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.cyan)
                        ),
                      ),
                      loaded: (missions) =>
                          MissionsList(missions: missions, isLoading: true),
                      completed: (missions) =>
                          MissionsList(missions: missions, isLoading: false),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
