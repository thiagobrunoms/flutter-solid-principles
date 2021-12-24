abstract class Authentication<TReturn, TParam> {
  Future<TReturn> signIn({TParam param});
  Future<TReturn> signOut({TParam param});
}
