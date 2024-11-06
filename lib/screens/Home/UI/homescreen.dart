import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_app/data/models/categories/categories.dart';
import 'package:test_app/data/models/products/products.dart';
import 'package:test_app/screens/Home/UI/product_page.dart';
import 'package:test_app/screens/Home/bloc/home_bloc.dart';
import 'package:test_app/screens/Login/UI/loginscreen.dart';
import 'package:test_app/util/color.dart';

class Homescreen extends StatelessWidget {
  final PageController _pageController = PageController();

  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            toolbarHeight: 80.h,
            elevation: 0,
            backgroundColor: ConstantColor.grey1,
            titleSpacing: 20,
            title: Text(
              textAlign: TextAlign.left,
              "Choose your Product",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
            ),
            automaticallyImplyLeading: false,
            actions: [
              Container(
                margin: EdgeInsets.all(17.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.r),
                  gradient: const LinearGradient(
                    colors: [ConstantColor.gradientblue1, ConstantColor.gradientblue2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: IconButton(
                  icon: Image.asset(
                    'assets/icons/searchicon.png',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    print("Search button pressed");
                  },
                ),
              ),
            ],
          ),
          body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: ConstantColor.grey1,
                image: DecorationImage(
                  image: AssetImage('assets/images/BG.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Padding(
                      padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                      child: GridView.builder(
                          physics: ClampingScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // 2 items per row
                            crossAxisSpacing: 30.w, // Horizontal space between cards
                            mainAxisSpacing: 30.h, // Vertical space between cards
                            childAspectRatio: 0.64.h, // Aspect ratio for each item (can adjust as needed)
                          ),
                          itemCount: state.isloadinggetcategories == true ? 10 : state.categories?.length ?? 10,
                          itemBuilder: (context, index) {
                            return state.isloadinggetcategories == true
                                ? Shimmer.fromColors(
                                    enabled: true,
                                    baseColor: Color.fromARGB(255, 131, 145, 169)!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(13.r)),
                                    ))
                                : InkWell(
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute<bool>(
                                          settings: const RouteSettings(name: "ProductPage"), builder: (BuildContext context) => ProductPage(productdetails: state.categories?[index])));
                                    },
                                    child: cardwidget(state.categories?[index] ?? Products()));
                          }));
                },
              )),
          bottomNavigationBar: BottomAppBar(
            color: ConstantColor.bottombarcolor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/bicycle.svg',
                      color: Colors.white,
                      height: 24,
                      width: 24,
                    ),
                    onPressed: () {
                      _pageController.jumpToPage(5);
                    },
                  ),
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/doc.text.fill.svg',
                    color: Colors.white,
                    height: 24,
                    width: 24,
                  ),
                  onPressed: () {
                    _pageController.jumpToPage(5);
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/person.fill.svg',
                    color: Colors.white,
                    height: 24,
                    width: 24,
                  ),
                  onPressed: () {
                    _pageController.jumpToPage(5);
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/cart.fill.svg',
                    color: Colors.white,
                    height: 24,
                    width: 24,
                  ),
                  onPressed: () {
                    _pageController.jumpToPage(5);
                  },
                ),
                TextButton(
                    onPressed: () {
                      Get.offAll(LoginScreen());
                    },
                    child: Text('Logout'))
              ],
            ),
          ),
        ));
  }

  Container cardwidget(Products category) {
    String cleanUrl(String url) {
      // Remove extra quotes and backslashes from the URL\

      return url.replaceAll(r'\', '').replaceAll(r'"', '').replaceAll(r'[', '').replaceAll(r']', '');
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 59, 93, 166), Color.fromARGB(255, 78, 94, 130)],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 5.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/icons/hearticon.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            Image.network(
              cleanUrl(category.images?.isNotEmpty == true ? category.images!.last : category.images?.first ?? 'https://i2.pngimg.me/thumb/f/350/4668421350359040.jpg'),
              scale: 10,
              errorBuilder: (context, error, stackTrace) {
                // Fallback image if the network image fails
                return Image.network(
                  'https://i2.pngimg.me/thumb/f/350/4668421350359040.jpg',
                  scale: 5,
                );
              },
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                Text(
                  category.title ?? "",
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$ ${category.price.toString()}",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
