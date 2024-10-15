import '../../presentation/screen/home_screen.dart';
import 'package:study_injection_and_routes_native/features/home/injections/factories/factory_home_screen.dart';

class SingletonHomeScreen {
  static final HomeScreen _instance = HomeScreenFactory.create();

  static HomeScreen get instance => _instance;
}
