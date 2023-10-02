part of 'unit_bloc.dart';

@immutable
sealed class UnitState {}

final class UnitInitial extends UnitState {}

class UnitLoadingState extends UnitState {}

class UnitLoadedState extends UnitState {
  final List<UnitGetAllRes> unitCategoryList;
  UnitLoadedState({required this.unitCategoryList});
}
