import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/domain/repository/i_auth_repository.dart';
import 'package:flutter_solid/solid/domain/usecases/google_signin_usecase.dart';
import 'package:flutter_solid/solid/domain/usecases/i_login_usecase.dart';

class FacebookLoginUsecase implements ILoginUsecase<NoParam> {
  final IAuthRepository _authRepository;

  FacebookLoginUsecase(this._authRepository);

  @override
  Future<User> execute({NoParam? credentials}) async {
    print('usecase: login com facebook');
    return await _authRepository.login();
  }
}
