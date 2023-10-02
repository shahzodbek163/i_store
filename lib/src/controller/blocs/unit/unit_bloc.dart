import 'package:bloc/bloc.dart';
import 'package:i_store/src/data/api_service.dart';
import 'package:i_store/src/domen/request/onlynamereq/only_name_req_model.dart';
import 'package:i_store/src/domen/response/unitGetAll/unit_get_all_res.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

part 'unit_event.dart';
part 'unit_state.dart';

class UnitBloc extends Bloc<UnitEvent, UnitState> {
  UnitBloc() : super(UnitInitial()) {
    final apiService = ApiService(
      Dio(
        BaseOptions(headers: {"Authorization": "Bearer $token"}),
      ),
    );
    on<LoadUnitTypeList>((event, emit) async {
      List<UnitGetAllRes> unitGetAll = await apiService.getUnit();
      emit(UnitLoadedState(unitCategoryList: unitGetAll));
    });
    on<UnitTypeNew>((event, emit) async {
      apiService.newUnit(OnlyNameReqModel(name: event.name));

      List<UnitGetAllRes> deviceCategoryGetAll = await apiService.getUnit();
      emit(UnitLoadedState(unitCategoryList: deviceCategoryGetAll));
    });
  }
}
