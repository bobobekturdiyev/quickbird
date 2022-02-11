import 'package:quickbird/domain/entities/user/user.dart';
import 'package:quickbird/domain/repositories/user_repository.dart';

class UserUseCase {
  final UserRepository _userRepository;
  const UserUseCase(this._userRepository);

  Future<User> getUserData(String username) async {
    return await _userRepository.getUserData(username);
  }
}
