import 'package:bloc/bloc.dart';
import 'package:i_store/src/data/api_service.dart';
import 'package:i_store/src/domen/request/newdevice/new_device_req_model.dart';
import 'package:i_store/src/domen/response/deviceGetAll/device_get_all_res.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
part 'device_type_event.dart';
part 'device_type_state.dart';

class DeviceTypeBloc extends Bloc<DeviceTypeEvent, DeviceTypeState> {
  DeviceTypeBloc() : super(DeviceTypeInitial()) {
    final apiService = ApiService(
      Dio(
        BaseOptions(headers: {"Authorization": "Bearer $token"}),
      ),
    );
    on<LoadDeviceTypeList>((event, emit) async {
      List<DeviceGetAllRes> deviceGetAll = await apiService.getAllDevicetype();
      emit(DeviceTypeListloadedState(deviceList: deviceGetAll));
    });
    on<DeviceTypeNew>((event, emit) async {
      apiService.newDevice(NewDeviceReqModel(name: event.name));
      List<DeviceGetAllRes> deviceGetAll = await apiService.getAllDevicetype();
      emit(DeviceTypeListloadedState(deviceList: deviceGetAll));
    });
  }
}
