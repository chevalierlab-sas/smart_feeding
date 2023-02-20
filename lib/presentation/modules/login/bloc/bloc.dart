import 'package:bloc/bloc.dart';

import 'event.dart';
import 'state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState().init()) {
    on<InitEvent>(_init);
  }

  void _init(InitEvent event, Emitter<LoginState> emit) async {
    emit(state.clone());
  }
}
