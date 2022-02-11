import 'package:quickbird/domain/entities/user/user.dart';

abstract class UserRepository {
  Future<User> getUserData(String username);
}
