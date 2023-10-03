part of 'stuff_controller_bloc_bloc.dart';

@immutable
sealed class StuffControllerEvent {}

class LoadStuffConstrollerEvent extends StuffControllerEvent {}

class StuffControllerNewEvent extends StuffControllerEvent {
  final OnlyNameReqModel onlyNameReqModel;

  StuffControllerNewEvent({required this.onlyNameReqModel});
}
