import 'package:quickbird/data/dto/user_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'graph_dto.g.dart';

@JsonSerializable()
class GraphDto {
  final UserDto user;
  const GraphDto({
    required this.user,
  });

  factory GraphDto.fromJson(Map<String, dynamic> json) =>
      _$GraphDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GraphDtoToJson(this);
}
