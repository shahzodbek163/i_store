import 'package:bloc/bloc.dart';
import 'package:i_store/src/data/api_service.dart';
import 'package:i_store/src/domen/request/newemployee/new_employee_req_model.dart';
import 'package:i_store/src/domen/response/emploeeGetAllRes/emploee_get_all_res.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

part 'employee_event.dart';
part 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(EmployeeInitial()) {
    final apiService = ApiService(Dio(
      BaseOptions(headers: {"Authorization": "Bearer $token"}),
    ));
    on<LoadEmployeeTypeList>((event, emit) async {
      List<EmploeeGetAllRes> firmGetAll = await apiService.getEmploeeAll();
      emit(EmployeeLoadedState(employeeCategoryList: firmGetAll));
    });
    on<EmployeeTypeNew>((event, emit) async {
      apiService.newEmployee(NewEmployeeModel(
        auth: event.newEmploeeModel.auth,
        endDate: event.newEmploeeModel.endDate,
        startDate: event.newEmploeeModel.startDate,
        face: event.newEmploeeModel.face,
        stuffId: event.newEmploeeModel.stuffId,
      ));
      List<EmploeeGetAllRes> employeeGetAll = await apiService.getEmploeeAll();
      emit(EmployeeLoadedState(employeeCategoryList: employeeGetAll));
    });
  }
}
