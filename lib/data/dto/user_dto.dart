import 'package:json_annotation/json_annotation.dart';
import 'package:quickbird/data/dto/followers_dto.dart';
import 'package:quickbird/data/dto/followings_dto.dart';
import 'package:quickbird/data/dto/posts_dto.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final String biography;
  final String username;
  @JsonKey(name: "full_name")
  final String fullName;

  @JsonKey(name: "profile_pic_url_hd")
  final String image;

  @JsonKey(name: "edge_followed_by")
  final FollowersDto followers;

  @JsonKey(name: "edge_follow")
  final FollowingsDto followings;

  @JsonKey(name: "edge_owner_to_timeline_media")
  final PostsDto posts;

  const UserDto({
    required this.biography,
    required this.username,
    required this.fullName,
    required this.image,
    required this.followers,
    required this.followings,
    required this.posts,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
