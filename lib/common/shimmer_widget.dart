import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shimmer/shimmer.dart';
import 'package:trogon_media_machine_test/utils/theme/app_color.dart';

// ignore: must_be_immutable
class ErrorShimmerWidget extends StatelessWidget {
  ErrorShimmerWidget(
      {super.key,
      required this.width,
      required this.height,
      this.baseColor = Colors.transparent,
      this.highlightColor});

  final double width, height;
  Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Theme.of(context).scaffoldBackgroundColor,
      highlightColor: highlightColor ??
          Theme.of(context).scaffoldBackgroundColor.withOpacity(.1),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColors.borderColor),
        height: height,
        width: width,
      ),
    );
  }
}
