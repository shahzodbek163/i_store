part of 'firm_bloc.dart';

@immutable
sealed class FirmEvent {}

class LoadFirmTypeList extends FirmEvent {}

class FirmTypeNew extends FirmEvent {
  final FirmNewReqModel frimNewReqModel;

  FirmTypeNew({required this.frimNewReqModel});
}
