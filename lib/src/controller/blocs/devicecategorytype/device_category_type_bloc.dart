import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:i_store/src/data/api_service.dart';
import 'package:i_store/src/domen/request/categorynewreq/category_req_model.dart';
import 'package:i_store/src/domen/request/onlynamereq/only_name_req_model.dart';
import 'package:i_store/src/domen/response/deviceGetAll/device_get_all_res.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

part 'device_category_type_event.dart';
part 'device_category_type_state.dart';

class DeviceCategoryTypeBloc
    extends Bloc<DeviceCategoryTypeEvent, DeviceCategoryTypeState> {
  DeviceCategoryTypeBloc() : super(DeviceCategoryTypeInitial()) {
    final apiService = ApiService(
      Dio(
        BaseOptions(headers: {"Authorization": "Bearer $token"}),
      ),
    );
    on<LoadDeviceCategoryTypeList>((event, emit) async {
      emit(DeviceTypeListLoadingState());
      List<DeviceGetAllRes> deviceCategoryGetAll =
          await apiService.getCategoryType();
      emit(DeviceCategoryTypeListLoadedState(
          deviceCategoryList: deviceCategoryGetAll));
    });
    on<DeviceCategoryTypeNew>((event, emit) async {
      apiService.newCategorytype(CategoryNewReqModel(
          name: event.reqModel.name,
          productCategoryTypes: event.reqModel.productCategoryTypes));

      List<DeviceGetAllRes> deviceCategoryGetAll =
          await apiService.getCategoryType();
      emit(DeviceCategoryTypeListLoadedState(
          deviceCategoryList: deviceCategoryGetAll));
    });
  }
}
