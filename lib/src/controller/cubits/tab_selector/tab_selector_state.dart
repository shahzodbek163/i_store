part of 'tab_selector_cubit.dart';

@immutable
abstract class TabSelectorState {
  final int selectedIndex;
  const TabSelectorState({required this.selectedIndex});
}

class TabSelectorStateInitial extends TabSelectorState {
  const TabSelectorStateInitial({required super.selectedIndex});
}

class TabSelectorStateData extends TabSelectorState {
  const TabSelectorStateData({required super.selectedIndex});
}
