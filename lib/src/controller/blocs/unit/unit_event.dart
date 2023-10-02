part of 'unit_bloc.dart';

@immutable
sealed class UnitEvent {}

class LoadUnitTypeList extends UnitEvent {}

class UnitTypeNew extends UnitEvent {
  final String name;

  UnitTypeNew({required this.name});
}
