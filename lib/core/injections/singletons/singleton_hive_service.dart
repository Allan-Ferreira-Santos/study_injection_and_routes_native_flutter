import 'package:study_injection_and_routes_native/core/services/hive_service.dart';
import 'package:study_injection_and_routes_native/core/injections/factories/factory_hive_service.dart';

class SingletonHiveService {
  static final HiveService _instance = HiveServiceFactory.create();

  static HiveService get instance => _instance;
}
