import 'package:bloc/bloc.dart';

import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState().init()) {
    on<InitEvent>(_init);
  }

  void _init(InitEvent event, Emitter<OnboardingState> emit) async {
    emit(state.clone());
  }
}
