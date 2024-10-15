import '../datasources/user_datasource.dart';

class UserRepository {
  final UserDataSource dataSource;

  UserRepository(this.dataSource);

  void saveUser(String user) {
    dataSource.saveUser(user);
  }
}
