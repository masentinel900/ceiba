import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageProvider {
  final FlutterSecureStorage _secureStorage;

  StorageProvider(this._secureStorage);

  Future<String?> getData(String key) async {
    return await _secureStorage.read(key: key);
  }

  Future<void> setData(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }
}
