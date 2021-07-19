import 'package:get_it/get_it.dart';
import 'package:spacex/data/repositories/mission_repository.dart';
import 'package:spacex/presentation/bloc/home_bloc.dart';
import 'package:spacex/services/graphql_client.dart';

final locator = GetIt.I;

void setupServices() {
  locator.registerLazySingleton(() => GQLClient());
  locator.registerLazySingleton(() => MissionRepository());
  locator.registerLazySingleton(() => HomeBloc(locator<MissionRepository>()));
}
