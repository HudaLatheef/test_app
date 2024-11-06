import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/data/models/products/products.dart';
import 'package:test_app/util/color.dart';

class ProductPage extends StatelessWidget {
  String cleanUrl(String url) {
    // Remove extra quotes and backslashes from the URL\

    return url.replaceAll(r'\', '').replaceAll(r'"', '').replaceAll(r'[', '').replaceAll(r']', '');
  }

  List<String> cleanUrls(List<String> urls) {
    return urls.map((url) => cleanUrl(url)).toList();
  }

  Products? productdetails;
  ProductPage({super.key, this.productdetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, size: 15.sp, color: Colors.white), onPressed: () => Navigator.pop(context)),
          automaticallyImplyLeading: false,
          centerTitle: false,
          toolbarHeight: 80.h,
          elevation: 0,
          backgroundColor: ConstantColor.grey1,
          titleSpacing: 0,
          title: Text(
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            productdetails?.title.toString() ?? '',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
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
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: (productdetails?.images?.isNotEmpty ?? false ? cleanUrls(productdetails!.images!) : ['https://i2.pngimg.me/thumb/f/350/4668421350359040.jpg']).map((url) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                            // Display a placeholder image or widget when an error occurs
                            return Image.network(
                              'https://i2.pngimg.me/thumb/f/350/4668421350359040.jpg', // Fallback image URL
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 40.h,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(color: ConstantColor.grey, borderRadius: BorderRadius.only(topLeft: Radius.circular(40.r), topRight: Radius.circular(40.r))),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 28.sp,
                      right: 28.sp,
                      top: 28.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.poppins(
                            color: ConstantColor.gradientblue1,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          productdetails?.title ?? '',
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            physics: ClampingScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              Text(
                                productdetails?.description ?? '',
                                overflow: TextOverflow.clip,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 30,
          child: Container(
            color: ConstantColor.grey,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 10,
                  blurRadius: 100,
                  offset: const Offset(0, 3),
                )
              ], color: ConstantColor.grey, borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 120.w,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 20.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "\$ ${productdetails?.price.toString() ?? ''}",
                                overflow: TextOverflow.clip,
                                style: GoogleFonts.poppins(
                                  color: ConstantColor.gradientblue1,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )),
                    InkWell(
                      onTap: () {
                        Get.snackbar('Added to cart', 'Product successfully added to cart', colorText: Colors.white);
                      },
                      child: Container(
                          width: 120.w,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [ConstantColor.gradientblue1, ConstantColor.gradientblue2],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 20.sp),
                            child: Text(
                              'Add to cart',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
