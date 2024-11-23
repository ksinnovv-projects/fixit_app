import 'package:dartz/dartz.dart';
import 'package:fixit_app/core/errors/errors_export.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = ResultFuture<void>;

typedef DataMap = Map<String, dynamic>;