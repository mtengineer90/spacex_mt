// Mocks generated by Mockito 5.0.7 from annotations
// in spacex/test/bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:spacex/data/repositories/mission_repository.dart' as _i2;
import 'package:spacex/domain/entities/mission.dart' as _i4;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: prefer_const_constructors

// ignore_for_file: avoid_redundant_argument_values

/// A class which mocks [MissionRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMissionRepository extends _i1.Mock implements _i2.MissionRepository {
  MockMissionRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Mission>> getMissions(String? search, int? page) =>
      (super.noSuchMethod(Invocation.method(#getMissions, [search, page]),
              returnValue: Future<List<_i4.Mission>>.value(<_i4.Mission>[]))
          as _i3.Future<List<_i4.Mission>>);
}
