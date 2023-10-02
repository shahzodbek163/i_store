part of 'firm_bloc.dart';

@immutable
sealed class FirmState {}

final class FirmInitial extends FirmState {}

class FirmLoadingState extends FirmState {}

class FirmLoadedState extends FirmState {
  final List<FirmGetAllRes> firmCategoryList;
  FirmLoadedState({required this.firmCategoryList});
}
