import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/data/repository/auth_repository.dart';
import 'package:flutter_solid/solid/data/repository/i_auth_repository.dart';
import 'package:flutter_solid/solid/domain/usecases/i_login_usecase.dart';

class GoogleLoginUsecase implements ILoginUsecase<NoParam> {
  final IAuthRepository _authRepository;

  GoogleLoginUsecase(this._authRepository);

  @override
  Future<User> execute(NoParam param) async {
    return await _authRepository.login();
  }
}

class NoParam {}
