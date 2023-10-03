import 'package:bloc/bloc.dart';
import 'package:i_store/src/data/api_service.dart';
import 'package:i_store/src/domen/request/onlynamereq/only_name_req_model.dart';
import 'package:i_store/src/domen/response/stuffmodel/stuff_get_all_res.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
part 'stuff_controller_bloc_event.dart';
part 'stuff_controller_bloc_state.dart';

class StuffControllerBloc
    extends Bloc<StuffControllerEvent, StuffControllerState> {
  StuffControllerBloc() : super(StuffControllerInitial()) {
    final apiService = ApiService(Dio(
      BaseOptions(headers: {"Authorization": "Bearer $token"}),
    ));
    on<LoadStuffConstrollerEvent>((event, emit) async {
      List<StuffGetAllResModel> stuffGetAll = await apiService.getAllStuff();
      emit(StuffControllerLoadedState(stuffCategoryList: stuffGetAll));
    });
    on<StuffControllerNewEvent>((event, emit) async {
      apiService.newStuff(OnlyNameReqModel(name: event.onlyNameReqModel.name));

      List<StuffGetAllResModel> stuffCategoryGetAll =
          await apiService.getAllStuff();
      emit(StuffControllerLoadedState(stuffCategoryList: stuffCategoryGetAll));
    });
  }
}
