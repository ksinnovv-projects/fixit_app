import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:fixit_app/core/errors/errors_export.dart';
import 'package:fixit_app/core/utils/typedef.dart';
import 'package:fixit_app/src/authentication/data/datasources/authentication_remote_datasource.dart';
import 'package:fixit_app/src/authentication/domain/entities/user.dart';
import 'package:fixit_app/src/authentication/domain/repos/authentication_repository.dart';

class AuthenticationRepositoryImplementation extends AuthenticationRepository{

  final AuthenticationRemoteDatasource authenticationRemoteDatasource;

  AuthenticationRepositoryImplementation(this.authenticationRemoteDatasource);
  @override
  ResultFuture createUser() {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  ResultFuture<User> findUser() {
    // TODO: implement findUser
    throw UnimplementedError();
  }

  @override
  ResultFuture<Map<String, dynamic>> sendOTP({required String phoneNumber}) async{
      try {
      final response = await authenticationRemoteDatasource.sendOtp(phoneNumber);
      return Right(jsonDecode(response.toString()));
    } catch (e) {
      return Left(APIFailure(message: e.toString(), statusCode: 400));
    }
  }

  @override
  ResultFuture verifyOTP() {
    // TODO: implement verifyOTP
    throw UnimplementedError();
  }
  
}