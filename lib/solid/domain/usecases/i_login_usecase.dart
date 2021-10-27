import 'package:flutter_solid/models/user_model.dart';
import 'package:flutter_solid/solid/domain/usecases/usecase.dart';

abstract class ILoginUsecase<T> implements Usecase<User, T> {}
