import 'package:i_store/src/domen/request/auth/auth_req_model.dart';
import 'package:i_store/src/domen/request/getbyid/get_by_id_req_model.dart';
import 'package:i_store/src/domen/request/newdevice/new_device_req_model.dart';
import 'package:i_store/src/domen/response/deviceGetAll/device_get_all_res.dart';
import 'package:i_store/src/domen/response/login/login_res_model.dart';
import 'package:i_store/src/domen/response/newdevice/new_device_res_model.dart';
import 'package:i_store/src/domen/response/register/register_res_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://192.168.1.2:8080/api/")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;
  @POST("auth/login")
  Future<LoginResModel> login(@Body() AuthReqModel authReqModel);
  @POST("auth/register")
  Future<RegisterResModel> register(@Body() AuthReqModel authReqModel);
  @GET("device-type")
  Future<List<DeviceGetAllRes>> getAllDevicetype();
  @GET("device-type/get")
  Future<DeviceGetAllRes> getById(@Body() GetById getById);

  @POST("device-type/new")
  Future<NewDeviceResModel> newDevice(@Body() NewDeviceReqModel deviceReqModel);
}
