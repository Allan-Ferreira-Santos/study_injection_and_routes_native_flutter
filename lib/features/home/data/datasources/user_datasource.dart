import 'package:study_injection_and_routes_native/core/services/hive_service.dart';
import 'package:study_injection_and_routes_native/core/injections/singletons/singleton_hive_service.dart';
class UserDataSource {
  
 final HiveService authService = SingletonHiveService.instance;

  String getUser()  {
    return authService.getData('username') ?? "";
  }
}
