part of 'part_cubit.dart';

@immutable
sealed class PartState {}

final class PartInitial extends PartState {}

final class PartIndex extends PartState {
  final int index;

  PartIndex({required this.index});
}
