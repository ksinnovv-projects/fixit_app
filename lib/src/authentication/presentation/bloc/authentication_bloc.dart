import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fixit_app/src/authentication/domain/usecases/sendotp_usecase.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {

  final SendOtpUseCase sendOtpUseCase;
  AuthenticationBloc(this.sendOtpUseCase) : super(AuthenticationInitial()) {
    on<SendOtpEvent>(_handleSendOtpEvent);
  }
  Future<void> _handleSendOtpEvent(
      SendOtpEvent event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    final result = await sendOtpUseCase(event.phoneNumber);
    result.fold(
      (failure) => emit(OtpSendFailure(failure.message)), 
      (success) => emit(OtpSentState(success["message"])));
  }
}

