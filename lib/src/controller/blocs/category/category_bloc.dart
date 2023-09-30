import 'package:bloc/bloc.dart';
import 'package:i_store/src/data/api_service.dart';
import 'package:i_store/src/domen/response/category/category_res_model.dart';
import 'package:i_store/src/utils/app_const.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    final apiService = ApiService(
      Dio(
        BaseOptions(headers: {"Authorization": "Bearer $token"}),
      ),
    );
    on<LoadCategoryList>((event, emit) async {
      emit(CategoryLoadingState());
      List<CategroyResModel> categories = await apiService.getCategory();
      emit(CategoryLoadedState(categoryModel: categories));
    });
  }
}
