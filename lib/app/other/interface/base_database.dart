abstract class BaseDatabase {
  Future initialize();

  Future<void> create();

  Future<T?> read<T>();

  Future<void> update();

  Future<void> delete();

  Future<void> clearStore();
}
