import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:test_app/core/failures/Errors/failures.dart';
import 'package:test_app/core/failures/auth/value_objects.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateMaxStringLengthvalue(
  String input,
  String maxLength,
) {
  if (input != "" && maxLength != "") {
    String input1 = input.replaceAll(",", "");
    // print("input1....${input1}");
    double input1double = double.parse(input);
    // print("doublevalue...${input1double}");
    String maxLength1 = maxLength.replaceAll(",", "");

    double maxLength1double = double.parse(maxLength1);

    if (input != "" && maxLength != "" && input1double <= maxLength1double) {
      return right(input.toString());
    } else {
      return left(
        ValueFailure.ExceedingLengthvalue(
            failedValue: input.toString(), max: maxLength.toString()),
      );
    }
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

// if (input != "" && min != "") {
//   String input1 = input.replaceAll(",", "");
//   // print("input1....${input1}");
//   double input1double = double.parse(input);
//   // print("doublevalue...${input1double}");
//   // String maxLength1 = maxLength.replaceAll(",", "");

//   double maxLength1double = double.parse(min);

//   if (input != "" && min != "" && input1double <= maxLength1double) {
//     return right(input.toString());
//   } else {
//     return left(
//       ValueFailure.Exceedingminbalance(
//           failedValue: input.toString(), max: min.toString()),
//     );
//   }
// } else {
//   return left(ValueFailure.empty(failedValue: input));
// }

Either<ValueFailure<String>, String> validateMinbal(
    String input, String minbalance, String availbalance) {
  String input1 = input.replaceAll(",", "");
  // print("input1....${input1}");
  double input1double = double.parse(input);
  // print("doublevalue...${input1double}");
  // String maxLength1 = maxLength.replaceAll(",", "");
  String minbalance1 = minbalance.replaceAll(",", "");
  String availbalance1 = availbalance.replaceAll(",", "");

  // double maxLength1double = double.parse(maxLength1);

  double minbalancedouble = double.parse(minbalance1);
  double availbalancedouble = double.parse(availbalance1);
  double diffamount = availbalancedouble - input1double;

  if (input1 != "" && diffamount > minbalancedouble) {
    // print('avail........${minbalance}');
    return right(input.toString());
  } else {
    return left(
      ValueFailure.Exceedingminbalance(
          failedValue: input.toString(), max: minbalance.toString()),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmptydouble(
    String input) {
  if (input.isNotEmpty) {
    return right(input.toString());
  } else {
    return left(ValueFailure.empty(failedValue: input.toString()));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String? input) {
  String input1 = input!.replaceAll(",", "");
  // print("input.....ooooo.........${input1}");
  if (input1.isNotEmpty || input1 != "") {
    //  print("input....bbbb...${input1}");
    return right(input1);
  } else {
    return left(ValueFailure.empty(failedValue: input1));
  }
}

// Either<ValueFailure<String>, String> validateStringNotEmpty2(
//     String? input, String? maxlimit, String? min, String? availbalance) {
//   String input1 = input!.replaceAll(",", "");
//   print("inputss.......${input1}");
//   //print("inputss.......${maxlimit}");
//   // print("inputss.......${min}");
//   // print("inputss.......${availbalance}");

//   if (input1.isNotEmpty) {
//     print(maxlimit);
//     print(min);
//     print(availbalance);
//     return right(input1);
//   } else {
//     return left(ValueFailure.empty(failedValue: input1));
//   }
// }

Either<ValueFailure<String>, String> validateSingleLine(String? input) {
  if (input!.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length <= 8 &&
      input.contains(RegExp(r'[0-9]')) &&
      input.contains(RegExp(r'[a-zA-Z]'))) {
    Password.savepassword = input;
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePasswordretype(String input) {
  if (input == Password.savepassword) {
    return right(input);
  } else {
    return left(ValueFailure.passworddoesntmatch(failedValue: input));
  }
}
