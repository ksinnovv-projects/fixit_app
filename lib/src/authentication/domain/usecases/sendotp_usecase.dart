import 'package:fixit_app/core/utils/utils_export.dart';
import 'package:fixit_app/src/authentication/domain/repos/authentication_repository.dart';

class SendOtpUseCase{
  final AuthenticationRepository _authenticationRepository;

  SendOtpUseCase(this._authenticationRepository);

  ResultFuture<Map<String, dynamic>> call(String phoneNumber) async{
     return _authenticationRepository.sendOTP(phoneNumber: phoneNumber);
     
  }
}