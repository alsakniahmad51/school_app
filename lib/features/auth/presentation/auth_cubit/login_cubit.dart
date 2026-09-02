import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:school_app/features/auth/domain/entities/auth_user.dart';
import 'package:school_app/features/auth/domain/usecases/login_use_case.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginInitial());
  final LoginUseCase loginUseCase;

  Future<void> login(String userName, String password) async {
    emit(LoginLoading());

    final result = await loginUseCase(userName, password);
    result.fold(
      (failure) => emit(LoginFailure(failure.message)),
      (user) => emit(LoginSuccess(user)),
    );
  }
}
