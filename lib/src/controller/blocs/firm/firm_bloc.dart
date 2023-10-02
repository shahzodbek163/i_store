import 'package:bloc/bloc.dart';
import 'package:i_store/src/data/api_service.dart';
import 'package:i_store/src/domen/request/firmnewreq/firm_new_req_model.dart';
import 'package:i_store/src/domen/response/firmgetall/firm_get_all_res.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

part 'firm_event.dart';
part 'firm_state.dart';

class FirmBloc extends Bloc<FirmEvent, FirmState> {
  FirmBloc() : super(FirmInitial()) {
    final apiService = ApiService(Dio(
      BaseOptions(headers: {"Authorization": "Bearer $token"}),
    ));
    on<LoadFirmTypeList>((event, emit) async {
      List<FirmGetAllRes> firmGetAll = await apiService.getFirmAll();
      emit(FirmLoadedState(firmCategoryList: firmGetAll));
    });
    on<FirmTypeNew>((event, emit) async {
      apiService.newFirm(FirmNewReqModel(
        address: event.frimNewReqModel.address,
        email: event.frimNewReqModel.email,
        name: event.frimNewReqModel.name,
        tel: event.frimNewReqModel.tel,
        web: event.frimNewReqModel.web,
      ));

      List<FirmGetAllRes> deviceCategoryGetAll = await apiService.getFirmAll();
      emit(FirmLoadedState(firmCategoryList: deviceCategoryGetAll));
    });
  }
}
