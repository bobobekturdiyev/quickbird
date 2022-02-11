import 'package:json_annotation/json_annotation.dart';

part 'followers_dto.g.dart';

@JsonSerializable()
class FollowersDto {
  final int count;
  const FollowersDto({
    required this.count,
  });

  factory FollowersDto.fromJson(Map<String, dynamic> json) =>
      _$FollowersDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FollowersDtoToJson(this);
}
