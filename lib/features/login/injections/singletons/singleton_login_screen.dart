import '../../presentation/screen/login_screen.dart';
import 'package:study_injection_and_routes_native/features/login/injections/factories/factory_login_screen.dart';

class SingletonLoginScreen {
  static final LoginScreen _instance = LoginScreenFactory.create();

  static LoginScreen get instance => _instance;
}
