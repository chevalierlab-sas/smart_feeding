import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
part 'state.dart';

class FormValueCubit extends Cubit<FormValuesState> {
  FormValueCubit() : super(FormValuesState.initial());

  void setEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }
}

class VisibilityPasswordCubit extends Cubit<bool> {
  VisibilityPasswordCubit() : super(false);

  void toggle() => emit(!state);
}



