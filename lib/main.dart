import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/NetworkController.dart';
import 'package:test_app/core/di/injectable.dart';
import 'package:test_app/data/models/products/products.dart';
import 'package:test_app/helper/main_binding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/screens/Home/UI/homescreen.dart';
import 'package:test_app/screens/Home/UI/product_page.dart';
import 'package:test_app/screens/Home/bloc/home_bloc.dart';
import 'package:test_app/screens/Login/UI/loginscreen.dart';
import 'package:test_app/screens/Login/bloc/login_bloc.dart';
import 'package:test_app/services/ConnectivityInfo.dart';
import 'package:test_app/util/color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharedPrefs.init();
  await configureInjection();

  Get.put(NetworkController(), permanent: true);
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (ctxlogin) => getIt<LoginBloc>()),
    BlocProvider(create: (ctxhome) => getIt<HomeBloc>()),
    // BlocProvider(
    //   create: (ctxauth) => getIt<HomeBloc>()..add(const HomeEvent.getcategories()),
    // ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(ScreenUtil.defaultSize.width, ScreenUtil.defaultSize.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            onGenerateRoute: routes,
            // useInheritedMediaQuery: true,
            // locale: DevicePreview.locale(context),
            // builder: DevicePreview.appBuilder,
            initialBinding: MainBinding(),
            debugShowCheckedModeBanner: false,
            title: 'Test app',
            theme: ThemeData(
                useMaterial3: false,
                pageTransitionsTheme: const PageTransitionsTheme(builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder(), TargetPlatform.iOS: CupertinoPageTransitionsBuilder()}),
                textTheme: GoogleFonts.poppinsTextTheme(),
                primaryColor: ConstantColor.grey1),
            home: LoginScreen(),
          );
        });
  }

  Route? routes(RouteSettings settings) {
    if (settings.name == '/LoginScreen') {
      return MaterialPageRoute(
        builder: (context) {
          return LoginScreen();
        },
      );
    } else if (settings.name == '/Homescreen') {
      return MaterialPageRoute(
        builder: (context) {
          return Homescreen();
        },
      );
    } else if (settings.name == '/ProductPage') {
      return MaterialPageRoute(
        builder: (context) {
          return ProductPage(
            productdetails: Products(),
          );
        },
      );
    }
  }
}
