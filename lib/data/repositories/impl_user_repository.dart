import 'package:quickbird/data/mapper/user_mapper.dart';
import 'package:quickbird/data/network/api/user_service.dart';
import 'package:quickbird/domain/entities/user/user.dart';
import 'package:quickbird/domain/repositories/user_repository.dart';

class ImplUserRepository extends UserRepository {
  final UserService _userService;
  final UserMapper _userMapper;

  ImplUserRepository(this._userService, this._userMapper);

  @override
  Future<User> getUserData(String username) {
    return _userService.getUserData(username).then(
          (response) => _userMapper.userDtoToDomain(response),
          onError: (e) => throw Exception(e),
        );
  }
}
