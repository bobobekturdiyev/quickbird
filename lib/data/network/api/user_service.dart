import 'package:dio/dio.dart';
import 'package:quickbird/data/dto/response_dto.dart';
import 'package:quickbird/data/network/urls.dart';
import 'package:retrofit/retrofit.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: Urls.baseURl)
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @GET("/{username}/?__a=1")
  Future<ResponseDto> getUserData(@Path() String username);
}
