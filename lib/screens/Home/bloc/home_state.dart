part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    bool? isloadinggetcategories,
    Option<Either<MainFailure, List<Products>>>? categoriesFailureOrSuccessOption,
    bool? isgettingcategories,
    List<Products>? categories,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(isloadinggetcategories: false, categoriesFailureOrSuccessOption: none(), isgettingcategories: false, categories: []);
}
