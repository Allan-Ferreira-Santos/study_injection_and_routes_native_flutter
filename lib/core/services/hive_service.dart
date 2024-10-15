import 'package:hive/hive.dart';

class HiveService {
  final String boxName = 'userBox';

  Future<void> init() async {
    await Hive.openBox(boxName);
  }

  Future<void> saveData(String key, String value) async {
    final box = Hive.box(boxName);
    await box.put(key, value);
  }

  String? getData(String key) {
    final box = Hive.box(boxName);
    return box.get(key);
  }
}
