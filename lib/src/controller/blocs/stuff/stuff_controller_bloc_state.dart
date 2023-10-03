part of 'stuff_controller_bloc_bloc.dart';

@immutable
sealed class StuffControllerState {}

final class StuffControllerInitial extends StuffControllerState {}

class StuffControllerLoadingState extends StuffControllerState {}

class StuffControllerLoadedState extends StuffControllerState {
  final List<StuffGetAllResModel> stuffCategoryList;

  StuffControllerLoadedState({required this.stuffCategoryList});
}
