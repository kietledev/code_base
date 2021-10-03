import 'package:code_base/common/constants/constants.dart';
import 'package:code_base/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api_service.g.dart';

@RestApi(baseUrl: UrlConstatns.apiLogin)
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST('/')
  Future<HttpResponse<ResponseModel>> postLogin({
    @Body() Map<String, dynamic>? params,
    @Header('k') String? k,
    @Header('dm') String? dm,
    @Header('tk') String? tk,
    @Header('ttl') int? ttl,
  });
}
