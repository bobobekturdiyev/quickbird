// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      biography: json['biography'] as String,
      username: json['username'] as String,
      fullName: json['full_name'] as String,
      image: json['profile_pic_url_hd'] as String,
      followers: FollowersDto.fromJson(
          json['edge_followed_by'] as Map<String, dynamic>),
      followings:
          FollowingsDto.fromJson(json['edge_follow'] as Map<String, dynamic>),
      posts: PostsDto.fromJson(
          json['edge_owner_to_timeline_media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'biography': instance.biography,
      'username': instance.username,
      'full_name': instance.fullName,
      'profile_pic_url_hd': instance.image,
      'edge_followed_by': instance.followers,
      'edge_follow': instance.followings,
      'edge_owner_to_timeline_media': instance.posts,
    };
