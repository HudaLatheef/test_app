// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:test_app/repository/HomeRepository/HomeRepo.dart' as _i201;
import 'package:test_app/repository/HomeRepository/i_Home_Facade.dart'
    as _i1068;
import 'package:test_app/screens/Home/bloc/home_bloc.dart' as _i153;
import 'package:test_app/screens/Login/bloc/login_bloc.dart' as _i143;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i143.LoginBloc>(() => _i143.LoginBloc());
    gh.lazySingleton<_i201.IHomeFacade>(() => _i1068.HomeFacade());
    gh.factory<_i153.HomeBloc>(() => _i153.HomeBloc(gh<_i201.IHomeFacade>()));
    return this;
  }
}
