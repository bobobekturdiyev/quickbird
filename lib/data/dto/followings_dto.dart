import 'package:json_annotation/json_annotation.dart';

part 'followings_dto.g.dart';

@JsonSerializable()
class FollowingsDto {
  final int count;
  const FollowingsDto({
    required this.count,
  });

  factory FollowingsDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingsDtoToJson(this);
}
