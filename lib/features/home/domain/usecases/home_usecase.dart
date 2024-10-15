import 'package:study_injection_and_routes_native/features/home/data/repositories/user_repository.dart';


class HomeUseCase {
  final UserRepository userRepository;

  HomeUseCase(this.userRepository);

  String getUser() {
    return  userRepository.getUser();
  }
  
}