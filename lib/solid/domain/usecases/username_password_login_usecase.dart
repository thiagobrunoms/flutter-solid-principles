import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/models/credentials.dart';
import 'package:flutter_solid/solid/data/repository/i_auth_repository.dart';
import 'package:flutter_solid/solid/domain/usecases/i_login_usecase.dart';

class UsernamePasswordLoginUsecase implements ILoginUsecase<Credentials> {
  IAuthRepository authRepository;

  UsernamePasswordLoginUsecase(this.authRepository);

  @override
  Future<User> execute(Credentials param) async {
    return await authRepository.login(credentials: param);
  }
}
