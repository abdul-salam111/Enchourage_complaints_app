import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/signin_repository.dart';
import 'signin_event.dart';
import 'signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInRepository repository;

  SignInBloc(this.repository) : super(SignInInitial()) {
    on<SignInSubmitted>(_onSignInSubmitted);
  }

  Future<void> _onSignInSubmitted(
    SignInSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInLoading());
    try {
      final result = await repository.signIn(event.email, event.password);
      if (result) {
        emit(SignInSuccess());
      } else {
        emit(SignInError('Sign in failed'));
      }
    } catch (e) {
      emit(SignInError(e.toString()));
    }
  }
}
