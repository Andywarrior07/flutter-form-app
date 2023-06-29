part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating }

class RegisterState extends Equatable {
  final Username username;
  final Email email;
  final Password password;
  final bool isValid;
  final FormStatus formStatus;

  const RegisterState({
    this.username = const Username.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.isValid = false,
    this.formStatus = FormStatus.invalid,
  });

  RegisterState copyWith({
    Username? username,
    Email? email,
    Password? password,
    bool? isValid,
    FormStatus? formStatus,
  }) =>
      RegisterState(
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        isValid: isValid ?? this.isValid,
        formStatus: formStatus ?? this.formStatus,
      );

  @override
  List<Object> get props => [username, email, password, isValid, formStatus];
}
