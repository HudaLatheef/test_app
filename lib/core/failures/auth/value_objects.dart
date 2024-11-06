import 'package:dartz/dartz.dart';
import 'package:test_app/core/failures/Errors/failures.dart';
import 'package:test_app/core/failures/Errors/value_objects.dart';
import 'package:test_app/core/failures/Errors/value_validators.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(
      validateStringNotEmpty(input),
    );
  }

  const Username._(this.value);
}

class Idnumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Idnumber(String input) {
    return Idnumber._(
      validateStringNotEmpty(input),
    );
  }

  const Idnumber._(this.value);
}

class TransferOwnAcc extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransferOwnAcc(String input) {
    return TransferOwnAcc._(
      validateStringNotEmpty(input),
    );
  }

  const TransferOwnAcc._(this.value);
}

class TransferOtherAcc extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransferOtherAcc(String input) {
    return TransferOtherAcc._(
      validateStringNotEmpty(input),
    );
  }

  const TransferOtherAcc._(this.value);
}

class TransferOtherAccAmount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransferOtherAccAmount(String input, String maxLimit) {
    // print("max limit...${maxLimit}");

    return TransferOtherAccAmount._(
      validateMaxStringLengthvalue(input, maxLimit),
    );
  }

  const TransferOtherAccAmount._(this.value);
}

class TransferOwnAccAmount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransferOwnAccAmount(
      String? input, String? maxLimit, String? min, String availbal) {
    //  print("max limit...input..${input}");
    //  validateMaxStringLengthvalue(input, maxLimit,minbalance,availbalance)
    //         .flatMap(validateStringNotEmptydouble)
    //         .flatMap(validateSingleLine),
    //   );
    // return TransferOwnAccAmount._(validateMaxStringLengthvalue(input, maxLimit)
    //     .flatMap((a) => validateMinbal(input, min, availbal)
    //         .flatMap((a) => validateStringNotEmpty(input))));
    return TransferOwnAccAmount._(validateStringNotEmpty(input!).flatMap((a) {
      if (input.isNotEmpty) {
        if (input.isNotEmpty && maxLimit!.isNotEmpty) {
          return validateMaxStringLengthvalue(input, maxLimit).flatMap((a) {
            if (input.isNotEmpty &&
                maxLimit.isNotEmpty &&
                min!.isNotEmpty &&
                availbal.isNotEmpty) {
              return validateMinbal(input, min, availbal);
            }
            return left(ValueFailure.empty(failedValue: input));
          });
        } else if (input.isNotEmpty &&
                min!.isNotEmpty &&
                availbal.isNotEmpty &&
                maxLimit!.isNotEmpty ||
            input.isNotEmpty && min!.isNotEmpty && availbal.isNotEmpty) {
          // print("input..rrrr.${input}");
          // print("min...${min}");
          // print("availbal...${availbal}");
          // print("maxlimit...${maxLimit}");
          // print("yyyyyyy");
          return validateMinbal(input, min, availbal);
        }
      }
      return left(ValueFailure.empty(failedValue: input));
    }));
  }

  const TransferOwnAccAmount._(this.value);
}

class Password extends ValueObject<String> {
  static String? savepassword;
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class Passwordretype extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Passwordretype(String input) {
    return Passwordretype._(
      validatePasswordretype(input),
    );
  }

  const Passwordretype._(this.value);
}

class Firstname extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Firstname(String input) {
    return Firstname._(
      validateStringNotEmpty(input),
    );
  }

  const Firstname._(this.value);
}

class Lastname extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Lastname(String input) {
    return Lastname._(
      validateStringNotEmpty(input),
    );
  }

  const Lastname._(this.value);
}

class NIC extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NIC(String input) {
    return NIC._(
      validateStringNotEmpty(input),
    );
  }

  const NIC._(this.value);
}

class Addressline1 extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Addressline1(String input) {
    return Addressline1._(
      validateStringNotEmpty(input),
    );
  }

  const Addressline1._(this.value);
}

class Addressline2 extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Addressline2(String input) {
    return Addressline2._(
      validateStringNotEmpty(input),
    );
  }

  const Addressline2._(this.value);
}

class Securityquestion extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Securityquestion(String input) {
    return Securityquestion._(
      validateStringNotEmpty(input),
    );
  }

  const Securityquestion._(this.value);
}

class Securityanswer extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Securityanswer(String input) {
    return Securityanswer._(
      validateStringNotEmpty(input),
    );
  }

  const Securityanswer._(this.value);
}

class PassportNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PassportNumber(String input) {
    return PassportNumber._(
      validateStringNotEmpty(input),
    );
  }

  const PassportNumber._(this.value);
}

class BusinessRegNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BusinessRegNumber(String input) {
    return BusinessRegNumber._(
      validateStringNotEmpty(input),
    );
  }

  const BusinessRegNumber._(this.value);
}

class CompanyName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CompanyName(String input) {
    return CompanyName._(
      validateStringNotEmpty(input),
    );
  }

  const CompanyName._(this.value);
}

class OldPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory OldPassword(String input) {
    return OldPassword._(
      validateStringNotEmpty(input),
    );
  }

  const OldPassword._(this.value);
}

class NewPassword extends ValueObject<String> {
  static String? savepassword;
  @override
  final Either<ValueFailure<String>, String> value;

  factory NewPassword(String input) {
    return NewPassword._(
      validatePassword(input),
    );
  }

  const NewPassword._(this.value);
}

class ReEnterPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ReEnterPassword(String input) {
    return ReEnterPassword._(
      validatePasswordretype(input),
    );
  }

  const ReEnterPassword._(this.value);
}
