part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}


class SendOtpEvent extends AuthenticationEvent{
  const SendOtpEvent(this.phoneNumber);
  final String phoneNumber;

  @override
  List<Object> get props => [phoneNumber];
}

class VerifyOtpEvent extends AuthenticationEvent {
  final String requestId;
  final String otp;

  const VerifyOtpEvent(this.requestId, this.otp);

   @override
  List<Object> get props => [requestId, otp];
}