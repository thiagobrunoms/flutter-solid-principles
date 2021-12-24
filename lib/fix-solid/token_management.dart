abstract class TokenManagement<TReturn, TParam> {
  Future<TReturn> refreshToken({TParam? params});
}
