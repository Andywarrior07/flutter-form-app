import 'package:formz/formz.dart';

enum PasswordError { empty, length }

class Password extends FormzInput<String, PasswordError> {
  const Password.pure() : super.pure('');
  const Password.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (displayError == PasswordError.empty) {
      return 'La contraseña no puede estar vacia';
    }

    if (displayError == PasswordError.length) {
      return 'La contraseña debe tener al menos 6 caracteres';
    }

    return null;
  }

  @override
  PasswordError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return PasswordError.empty;
    }

    if (value.length < 6) {
      return PasswordError.length;
    }
    return null;
  }
}
