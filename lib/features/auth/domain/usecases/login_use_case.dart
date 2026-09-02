import 'package:dartz/dartz.dart';
import 'package:school_app/core/errors/exceptions.dart';
import 'package:school_app/features/auth/domain/entities/auth_user.dart';
import 'package:school_app/features/auth/domain/repositories/auth_repo.dart';

class LoginUseCase {
  final AuthRepo repository;

  LoginUseCase(this.repository);

  Future<Either<Failure, AuthUser>> call(
    String userName,
    String password,
  ) async {
    return await repository.login(userName, password);
  }
}
