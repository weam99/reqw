import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'change_password_state.dart';

enum Passwords { current, newpass, reenter }

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit() : super(ChangePasswordInitial());
  static ChangePasswordCubit get(context) => BlocProvider.of(context);

  bool isCurrent = true;
  bool isNew = true;
  bool isReenter = true;

  void changeIcon(Passwords passwords) {
    switch (passwords) {
      case Passwords.current:
        isCurrent = !isCurrent;
        break;
      case Passwords.newpass:
        isNew = !isNew;
        break;
      case Passwords.reenter:
        isReenter = !isReenter;
        break;
    }
    emit(ChangePasswordsuccess());
  }
}
