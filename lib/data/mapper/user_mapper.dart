import 'package:quickbird/data/dto/response_dto.dart';
import 'package:quickbird/domain/entities/user/user.dart';

class UserMapper {
  User userDtoToDomain(ResponseDto response) {
    var user = response.graphql.user;
    return User(
      username: user.username,
      fullName: user.fullName,
      bio: user.biography,
      posts: user.posts.count,
      followers: user.followers.count,
      followings: user.followings.count,
      image: user.image,
    );
  }
}
