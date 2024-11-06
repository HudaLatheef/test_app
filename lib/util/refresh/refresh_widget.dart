import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loading_indicator/loading_indicator.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:test_app/util/color.dart';
import 'package:test_app/util/refresh/curve_refresh_loading.dart';

// import 'package:timetick/screens/core/color.dart';

import 'colors.dart';

Widget refreshScreenWidget({
  required RefreshController refreshController,
  required Function onRefreshFunc,
  required Widget widget,
}) {
  return SmartRefresher(
      enablePullUp: false,
      header: BezierHeader(
          enableChildOverflow: true,
          dismissType: BezierDismissType.RectSpread,
          bezierColor: backgroundColor,
          child: Center(
            child: SizedBox(
              width: 50.w,
              height: 50.h,
              child: const LoadingIndicator(
                indicatorType: Indicator.ballClipRotateMultiple,
                colors: [
                  ConstantColor.grey1,
                  Colors.white,
                  Colors.white,
                  Colors.white
                ],
              ),
            ),
          )),
      controller: refreshController,
      onRefresh: () {
        onRefreshFunc();
      },
      child: widget);
}

Widget refreshNormalScreenWidget({
  required RefreshController refreshController,
  required Function onRefreshFunc,
  required Widget widget,
}) {
  return SmartRefresher(
      enablePullUp: false,
      header: const MaterialClassicHeader(),
      controller: refreshController,
      onRefresh: () {
        onRefreshFunc();
      },
      child: widget);
}

Widget refreshCurveScreenWidget({
  required RefreshController refreshController,
  required Function onRefreshFunc,
  required Widget widget,
}) {
  return SmartRefresher(
      enablePullUp: false,
      header: const ShimmerHeader(
        text: RefreshProgressIndicator(
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(ConstantColor.skyblue),
        ),
      ),
      controller: refreshController,
      onRefresh: () {
        onRefreshFunc();
      },
      child: widget);
}
