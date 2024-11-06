import 'package:flutter/material.dart' as prefix0;
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter/material.dart'
    hide RefreshIndicator, RefreshIndicatorState;
import 'package:shimmer/shimmer.dart';

import 'colors.dart';

class ShimmerHeader extends RefreshIndicator {
  final Color baseColor, highlightColor;
  final Widget text;
  final Duration period;
  final ShimmerDirection direction;
  final Function? outerBuilder;

  const ShimmerHeader(
      {super.key,
      required this.text,
      this.baseColor = Colors.white,
      this.highlightColor = Colors.white,
      this.outerBuilder,
      super.height = 80.0,
      this.period = const Duration(milliseconds: 1000),
      this.direction = ShimmerDirection.ltr})
      : super(refreshStyle: RefreshStyle.Behind);

  @override
  State<StatefulWidget> createState() {
    return _ShimmerHeaderState();
  }
}

class _ShimmerHeaderState extends RefreshIndicatorState<ShimmerHeader>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late AnimationController _fadeController;

  @override
  void initState() {
    _scaleController = AnimationController(vsync: this);
    _fadeController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void onOffsetChange(double offset) {
    if (!floating) {
      _scaleController.value = offset / configuration!.headerTriggerDistance;
      _fadeController.value = offset / configuration!.footerTriggerDistance;
    }
  }

  @override
  Widget buildContent(BuildContext context, RefreshStatus mode) {
    final Widget body = ScaleTransition(
      scale: _scaleController,
      child: FadeTransition(
        opacity: _fadeController,
        child: mode == RefreshStatus.refreshing
            ? Shimmer.fromColors(
                enabled: true,
                period: widget.period,
                direction: widget.direction,
                baseColor: widget.baseColor,
                highlightColor: widget.highlightColor,
                child: Center(
                  child: widget.text,
                ),
              )
            : Center(
                child: widget.text,
              ),
      ),
    );
    return widget.outerBuilder != null
        ? widget.outerBuilder!(body)
        : Container(
            color: Colors.white,
            alignment: prefix0.Alignment.center,
            child: ClipPath(
              clipper: Customshape(),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: backgroundColor),
                  child: body),
            ));
  }
}

class ShimmerFooter extends LoadIndicator {
  final Color baseColor, highlightColor;
  final Widget? text, failed, noMore;
  final Duration period;
  final ShimmerDirection direction;
  final Function? outerBuilder;

  const ShimmerFooter(
      {super.key,
      required this.text,
      this.baseColor = Colors.white,
      this.highlightColor = Colors.white,
      this.outerBuilder,
      super.height = 80.0,
      this.failed,
      this.noMore,
      this.period = const Duration(milliseconds: 1000),
      this.direction = ShimmerDirection.ltr,
      super.loadStyle});

  @override
  State<StatefulWidget> createState() {
    return _ShimmerFooterState();
  }
}

class _ShimmerFooterState extends LoadIndicatorState<ShimmerFooter> {
  @override
  Widget buildContent(BuildContext context, LoadStatus mode) {
    final Widget? body = mode == LoadStatus.failed
        ? widget.failed
        : mode == LoadStatus.noMore
            ? widget.noMore
            : mode == LoadStatus.idle
                ? Center(child: widget.text)
                : Shimmer.fromColors(
                    enabled: true,
                    period: widget.period,
                    direction: widget.direction,
                    baseColor: widget.baseColor,
                    highlightColor: widget.highlightColor,
                    child: Center(
                      child: widget.text,
                    ),
                  );
    return widget.outerBuilder != null
        ? widget.outerBuilder!(body)
        : Container(
            color: Colors.white,
            height: widget.height,
            decoration: prefix0.BoxDecoration(color: backgroundColor),
            child: body,
          );
  }
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 80);
    path.quadraticBezierTo(
        size.width / 4, size.height - 5, size.width / 2, size.height);

    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 3, size.height);
    path.quadraticBezierTo(size.width - (size.width / 3), size.height + 20,
        size.width, size.height - 80);

    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
