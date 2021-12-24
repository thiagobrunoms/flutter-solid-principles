abstract class HTTPConnection<TReturn, TParam> {
  Future<TReturn> post(String url, TParam param);
  Future<TReturn> get(String url);
}
