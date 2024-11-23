part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();
  
  @override
  List<Object> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class OtpSentState extends AuthenticationState {
  final String message;

  const OtpSentState(this.message);
}

class OtpVerificationSuccess extends AuthenticationState {
  final String token;

  const OtpVerificationSuccess(this.token);
}

class OtpVerificationFailure extends AuthenticationState {
  final String error;

  const OtpVerificationFailure(this.error);
}

class OtpSendFailure extends AuthenticationState {
  final String error;

  const OtpSendFailure(this.error);
}
