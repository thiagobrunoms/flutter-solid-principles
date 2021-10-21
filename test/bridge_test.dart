import 'package:flutter_solid/design_patterns/bridge/datasources/i_datasources/local_storage_datasource.dart';
import 'package:flutter_solid/design_patterns/bridge/datasources/i_datasources/remote_datasource.dart';
import 'package:flutter_solid/design_patterns/bridge/datasources/i_storages/user_remote_firebase_storage.dart';
import 'package:flutter_solid/design_patterns/bridge/datasources/i_storages/user_shared_preferences_storage.dart';
import 'package:flutter_solid/design_patterns/bridge/models/user_dto.dart';
import 'package:flutter_solid/design_patterns/bridge/repository/i_crud_repository.dart';
import 'package:flutter_solid/design_patterns/bridge/repository/user_crud_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Bridge design', () {
    ICrudRepository iCrudRepository =
        UserCrudRepository(CRUDRemoteDatasource(UserRemoteFirebaseStorage()));

    iCrudRepository.create(UserDTO(name: 'Thiago'));

    iCrudRepository =
        UserCrudRepository(CRUDLocalDatasource(UserSharedPreferencesStorage()));

    iCrudRepository.create(UserDTO(name: 'Thiago'));
  });
}
