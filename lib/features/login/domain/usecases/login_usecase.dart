import 'package:study_injection_and_routes_native/features/login/data/repositories/user_repository.dart';

class LoginUseCase {
  final UserRepository repository;

  LoginUseCase(this.repository);

  void executeSaveUser(String user) {
    repository.saveUser(user);
  }

}
