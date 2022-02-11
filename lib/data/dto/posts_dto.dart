import 'package:json_annotation/json_annotation.dart';

part 'posts_dto.g.dart';

@JsonSerializable()
class PostsDto {
  final int count;
  const PostsDto({
    required this.count,
  });

  factory PostsDto.fromJson(Map<String, dynamic> json) =>
      _$PostsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PostsDtoToJson(this);
}
