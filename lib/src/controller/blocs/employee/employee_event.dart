part of 'employee_bloc.dart';

@immutable
sealed class EmployeeEvent {}

class LoadEmployeeTypeList extends EmployeeEvent {}

class EmployeeTypeNew extends EmployeeEvent {
  final NewEmployeeModel newEmploeeModel;

  EmployeeTypeNew({required this.newEmploeeModel});
}
