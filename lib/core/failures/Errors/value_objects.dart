import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/core/failures/Errors/failures.dart';

import 'errors.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();
  bool isNotValid() => value.isLeft();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

// class UniqueId extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   factory UniqueId() {
//     return UniqueId._(
//       right(Uuid().v1()),
//     );
//   }

//   factory UniqueId.fromUniqueString(String uniqueId) {
//     assert(uniqueId != null);
//     return UniqueId._(
//       right(uniqueId),
//     );
//   }

//   const UniqueId._(this.value);
