import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../../../data/datasource/auth_remote_datasource.dart';
import '../../../../data/model/response/auth_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource authRemoteDatasource;

  LoginBloc(this.authRemoteDatasource) : super(LoginInitial())  {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      final response = await authRemoteDatasource.login(event.email, event.password);

      response.fold(
        (error) => emit(LoginFailure(message: error)),
        (success) => emit(LoginSuccess(authResponseModel: success))
      );
    });
  }
}
