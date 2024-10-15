import '../datasources/user_datasource.dart';

class UserRepository {
  final UserDataSource dataSource;

  UserRepository(this.dataSource);

  String getUser() {
    return  dataSource.getUser();
  }
}
