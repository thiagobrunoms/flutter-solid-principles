abstract class ILocalDatasource<T> {
  Future<bool> write(Map<String, dynamic> token);
  Future<T> read();
}
