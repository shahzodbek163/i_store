part of 'employee_bloc.dart';

@immutable
sealed class EmployeeState {}

final class EmployeeInitial extends EmployeeState {}

class EmployeeLoadingState extends EmployeeState {}

class EmployeeLoadedState extends EmployeeState {
  final List<EmploeeGetAllRes> employeeCategoryList;
  EmployeeLoadedState({required this.employeeCategoryList});
}
