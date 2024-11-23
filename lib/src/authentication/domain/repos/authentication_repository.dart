import 'package:fixit_app/core/utils/utils_export.dart';
import 'package:fixit_app/src/authentication/domain/entities/user.dart';

abstract class AuthenticationRepository{

  ResultFuture<Map<String, dynamic>> sendOTP({required String phoneNumber});

  ResultFuture verifyOTP();

  ResultFuture<User> findUser();

  ResultFuture createUser();
}