import 'package:i_store/src/domen/request/auth/auth_req_model.dart';
import 'package:i_store/src/domen/request/categorynewreq/category_req_model.dart';
import 'package:i_store/src/domen/request/facenew/face_new_req_model.dart';
import 'package:i_store/src/domen/request/firmnewreq/firm_new_req_model.dart';
import 'package:i_store/src/domen/request/getbyid/get_by_id_req_model.dart';
import 'package:i_store/src/domen/request/newdevice/new_device_req_model.dart';
import 'package:i_store/src/domen/request/newemployee/new_employee_req_model.dart';
import 'package:i_store/src/domen/request/onlynamereq/only_name_req_model.dart';
import 'package:i_store/src/domen/request/product/product_req_model.dart';
import 'package:i_store/src/domen/response/category/category_res_model.dart';
import 'package:i_store/src/domen/response/deviceGetAll/device_get_all_res.dart';
import 'package:i_store/src/domen/response/faceget/face_get_res_model.dart';
import 'package:i_store/src/domen/response/firmgetall/firm_get_all_res.dart';
import 'package:i_store/src/domen/response/login/login_res_model.dart';
import 'package:i_store/src/domen/response/newdevice/new_device_res_model.dart';
import 'package:i_store/src/domen/response/register/register_res_model.dart';
import 'package:i_store/src/domen/response/stuffmodel/stuff_get_all_res.dart';
import 'package:i_store/src/domen/response/unitGetAll/unit_get_all_res.dart';
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

  @POST("employee/new")
  Future<NewDeviceResModel> newEmployee(@Body() NewEmployeeModel employeeModel);

  @POST("unit/new")
  Future<NewDeviceResModel> newUnit(@Body() OnlyNameReqModel nameReqModel);

  @GET("unit/")
  Future<List<UnitGetAllRes>> getUnit();

  @GET("unit/get")
  Future<DeviceGetAllRes> getUnitById(@Body() GetById getById);

  @POST("product/new")
  Future<NewDeviceResModel> newProduct(@Body() ProductReqModel productReqModel);

  @GET("stuff")
  Future<List<StuffGetAllResModel>> getAllStuff();

  @POST("stuff/new")
  Future<NewDeviceResModel> newStuff(@Body() OnlyNameReqModel nameReqModel);

  @GET("category-types")
  Future<List<DeviceGetAllRes>> getCategoryType();

  @GET("category-types/get")
  Future<DeviceGetAllRes> getCategoryTypeById(@Body() GetById getById);

  @POST("category-types/new")
  Future<NewDeviceResModel> newCategorytype(
      @Body() CategoryNewReqModel categoryNewReqModel);

  @POST("face/new")
  Future<NewDeviceResModel> newFace(@Body() FaceNewReqModel faceNewReqModel);

  @GET("face/get")
  Future<FaceGetResModel> getFaceById(@Body() GetById getById);

  @GET("category")
  Future<List<CategroyResModel>> getCategory();

  @GET("firm")
  Future<List<FirmGetAllRes>> getFirmAll();

  @GET("firm/get")
  Future<List<FirmGetAllRes>> getFirmById(@Body() GetById getById);

  @POST("firm/new")
  Future<NewDeviceResModel> newFirm(@Body() FirmNewReqModel firmNewReqModel);
}
