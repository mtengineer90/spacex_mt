import 'package:spacex/data/models/mission.dart';
import 'package:spacex/domain/entities/mission.dart';
import 'package:spacex/domain/repositories/mission_repository.dart';
import 'package:spacex/services/graphql_client.dart';
import 'package:spacex/services/logger.dart';
import 'package:spacex/services/service_locator.dart';

class MissionRepository implements IMissionRepository {
  @override
  Future<List<Mission>> getMissions(String search, int page) async {
    logger.i('Page: $page mission listing and search term: "$search"');
    final missionData =
        await locator<GQLClient>().getMissions(search, page * 10);

    if (missionData.hasException) {
      logger.e(missionData.exception);
      throw missionData.exception!;
    }
    return missionData.data!['launches']
        .map<MissionModel>(
          (launch) => MissionModel(
            name: launch['mission_name'],
            details: launch['details'],
          ),
        )
        .toList();
  }
}
