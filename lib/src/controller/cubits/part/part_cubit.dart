import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'part_state.dart';

class PartCubit extends Cubit<PartState> {
  PartCubit() : super(PartInitial());

  change(int index) {
    emit(PartIndex(index: index));
  }
}
