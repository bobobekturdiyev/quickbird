import 'package:quickbird/data/dto/graph_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_dto.g.dart';

@JsonSerializable()
class ResponseDto {
  final GraphDto graphql;

  const ResponseDto({required this.graphql});

  factory ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDtoToJson(this);
}
