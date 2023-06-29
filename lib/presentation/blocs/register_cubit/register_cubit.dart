import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:forms_app/infraestructure/inputs/inputs.dart';
import 'package:formz/formz.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());

  void onSubmit() {
    emit(
      state.copyWith(
        formStatus: FormStatus.validating,
        username: Username.dirty(state.username.value),
        password: Password.dirty(state.password.value),
        email: Email.dirty(state.email.value),
        isValid: Formz.validate([
          state.username,
          state.password,
          state.email,
        ]),
      ),
    );

    print('Submit: $state');
  }

  dynamic usernameChanged(String? value) {
    final username = Username.dirty(value!);

    emit(
      state.copyWith(
        username: username,
        isValid: Formz.validate([username, state.email, state.password]),
      ),
    );
  }

  dynamic emailChanged(String? value) {
    final email = Email.dirty(value!);

    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.username, state.password]),
      ),
    );
  }

  dynamic passwordChanged(String? value) {
    final password = Password.dirty(value!);

    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate(
          [password, state.username, state.email],
        ),
      ),
    );
  }
}
