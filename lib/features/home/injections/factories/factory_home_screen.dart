import 'package:study_injection_and_routes_native/features/home/domain/usecases/home_usecase.dart';
import 'package:study_injection_and_routes_native/features/home/presentation/screen/home_screen.dart';
import 'package:study_injection_and_routes_native/features/home/data/datasources/user_datasource.dart';
import 'package:study_injection_and_routes_native/features/home/data/repositories/user_repository.dart';


class HomeScreenFactory {
  static HomeScreen create() {
    UserDataSource userDataSource = UserDataSource();
    UserRepository userRepository = UserRepository(userDataSource);
    HomeUseCase homeUseCase = HomeUseCase(userRepository);

    return HomeScreen(homeUseCase: homeUseCase); 
  }
}
