import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app2/core/errors/failure.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}
