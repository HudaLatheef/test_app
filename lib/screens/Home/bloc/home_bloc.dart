import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/core/failures/auth/auth_failure.dart';
import 'package:test_app/core/failures/main_failure.dart';
import 'package:test_app/data/models/categories/categories.dart';
import 'package:test_app/data/models/products/products.dart';
import 'package:test_app/repository/HomeRepository/HomeRepo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeFacade _homeFacade;
  HomeBloc(this._homeFacade) : super(HomeState.initial()) {
    on<Ongetcategories>(
      (event, emit) async {
        Either<MainFailure, List<Products>> categoriessucccessorfailuredata;

        emit(state.copyWith(
          isloadinggetcategories: true,
          categoriesFailureOrSuccessOption: none(),
        ));

        categoriessucccessorfailuredata = await _homeFacade.getcategories();

        emit(categoriessucccessorfailuredata.fold(
            (failure) => state.copyWith(isloadinggetcategories: false, categoriesFailureOrSuccessOption: some(left(failure)), isgettingcategories: false),
            (success) => state.copyWith(
                  isloadinggetcategories: false,
                  categoriesFailureOrSuccessOption: some(
                    right(success),
                  ),
                  categories: success,
                  isgettingcategories: true,
                )));

        print(state.categories);

        emit(state.copyWith(categoriesFailureOrSuccessOption: none(), isgettingcategories: false));
      },
    );
  }
}
