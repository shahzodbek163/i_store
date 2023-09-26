import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tab_selector_state.dart';

class TabSelectorCubit extends Cubit<TabSelectorState> {
  TabSelectorCubit() : super(const TabSelectorStateInitial(selectedIndex: 0));
  void selector(int index) {
    emit(TabSelectorStateData(selectedIndex: index));
  }
}
