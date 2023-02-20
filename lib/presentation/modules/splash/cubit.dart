import 'package:bloc/bloc.dart';

import 'state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState().init());
}
