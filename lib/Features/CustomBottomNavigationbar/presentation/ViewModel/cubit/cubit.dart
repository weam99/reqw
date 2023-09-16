import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class CustomBottomNavigationBarCubit
    extends Cubit<CustomBottomNavigationBarState> {
  CustomBottomNavigationBarCubit() : super(InitState());
  static CustomBottomNavigationBarCubit get(context) =>
      BlocProvider.of(context);
  String selectedIcon = "Home";
  changeSelectedIcon({required String newSelect}) {
    selectedIcon = newSelect;
    emit(ChangeIconState());
  }
}
