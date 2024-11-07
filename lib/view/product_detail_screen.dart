import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_media_machine_test/common/common_text.dart';
import 'package:trogon_media_machine_test/model/home_model.dart';
import 'package:trogon_media_machine_test/utils/theme/app_color.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, this.productModel});
  final HomeModel? productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.scaffoldBgColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300.h,
                  width: double.maxFinite,
                  child: Image.asset(
                    'assets/phone.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                20.verticalSpace,
                CommonText(
                  text: productModel?.name ?? "",
                  maxLines: 2,
                  fontSize: 20.sp,
                  textOverflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ));
  }
}
