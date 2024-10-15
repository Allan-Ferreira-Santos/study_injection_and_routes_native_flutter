import 'package:study_injection_and_routes_native/features/login/domain/usecases/login_usecase.dart';
import 'package:study_injection_and_routes_native/features/login/data/datasources/user_datasource.dart';
import 'package:study_injection_and_routes_native/features/login/presentation/screen/login_screen.dart';
import 'package:study_injection_and_routes_native/features/login/data/repositories/user_repository.dart';

class LoginScreenFactory {
  static LoginScreen create() {
    UserDataSource userDataSource = UserDataSource();
    UserRepository userRepository = UserRepository(userDataSource);
    LoginUseCase loginUseCase = LoginUseCase(userRepository);

    return LoginScreen(loginUseCase: loginUseCase);
  }
}
