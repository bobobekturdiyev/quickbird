// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphDto _$GraphDtoFromJson(Map<String, dynamic> json) => GraphDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GraphDtoToJson(GraphDto instance) => <String, dynamic>{
      'user': instance.user,
    };
