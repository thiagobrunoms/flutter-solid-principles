abstract class ILocalDatasource<T> {
  Future<bool> write(T token);
  Future<T> read();
}
