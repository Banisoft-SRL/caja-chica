import 'package:formz/formz.dart';

enum RncInputError {
  invalid,
  invalidLength,
  invalidFormat,
  invalidCheckDigit,
}

enum BeneficiarioInputError { empty, invalidLength }

class RncInput extends FormzInput<String, RncInputError> {
  const RncInput.pure() : super.pure('');
  const RncInput.dirty([String value = '']) : super.dirty(value);
  @override
  RncInputError? validator(String value) {
    if (value.isEmpty) {
      return null;
    }
    if (value.length != 9) {
      return RncInputError.invalidLength;
    }
    // if (!RegExp(r'^[0-9]{2}-?[0-9]{7}-?[0-9]$').hasMatch(value)) {
    //   return RncInputError.invalidFormat;
    // }

    return null;
  }
}

class BeneficiarioInput extends FormzInput<String, BeneficiarioInputError> {
  const BeneficiarioInput.pure() : super.pure('');
  const BeneficiarioInput.dirty([String value = '']) : super.dirty(value);
  @override
  BeneficiarioInputError? validator(String value) {
    if (value.isEmpty) {
      return BeneficiarioInputError.empty;
    }
    if (value.length < 3) {
      return BeneficiarioInputError.invalidLength;
    }
    return null;
  }
}
