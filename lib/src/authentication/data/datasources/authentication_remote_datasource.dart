import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fixit_app/core/errors/errors_export.dart';
import 'package:fixit_app/core/utils/utils_export.dart';
import 'package:fixit_app/src/authentication/domain/entities/user.dart';
import "package:dio/dio.dart";

abstract class AuthenticationRemoteDatasource {
  ResultFuture<Map<String, dynamic>> sendOtp(String phoneNumber);
  ResultFuture<User> findUser();
  ResultFuture createUser();
  ResultFuture verifyOTP();
}

class AuthRemoteDataSourceImplementation
    extends AuthenticationRemoteDatasource {
  AuthRemoteDataSourceImplementation(this._dio);
  final Dio _dio;
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
  ResultFuture<Map<String, dynamic>> sendOtp(String phoneNumber) async {
    // TODO: implement sendOtp
    final response = await _dio.post("$kBaseUrl/auth/send-otp", data: {
      {"channel": "SMS", "recipient": phoneNumber}
    });
    return jsonDecode(response.toString());
  }

  @override
  ResultFuture verifyOTP() {
    // TODO: implement verifyOTP
    throw UnimplementedError();
  }
}
