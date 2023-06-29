import 'package:formz/formz.dart';

enum EmailError { empty, validEmail }

class Email extends FormzInput<String, EmailError> {
  const Email.pure() : super.pure('');
  const Email.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (displayError == EmailError.empty) {
      return 'El email no puede estar vacio';
    }

    if (displayError == EmailError.validEmail) {
      return 'El email no es valido';
    }

    return null;
  }

  @override
  EmailError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return EmailError.empty;
    }

    final emailRegExp = RegExp(
      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
    );

    if (!emailRegExp.hasMatch(value)) {
      return EmailError.validEmail;
    }

    return null;
  }
}
