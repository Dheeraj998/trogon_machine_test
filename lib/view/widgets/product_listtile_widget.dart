import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trogon_media_machine_test/common/common_text.dart';
import 'package:trogon_media_machine_test/model/home_model.dart';
import 'package:trogon_media_machine_test/utils/theme/app_color.dart';

class ProductListTileWidget extends StatelessWidget {
  const ProductListTileWidget({
    super.key,
    this.productModel,
  });
  final HomeModel? productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/phone.jpg',
              height: 75.h,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.image),
              width: 75.w,
              fit: BoxFit.cover,
            ),
            5.verticalSpace,
            CommonText(
              text: productModel?.name ?? "",
              maxLines: 2,
              fontSize: 14.sp,
              textOverflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600,
            ),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(
                  text: "\$${productModel?.price?.toString()}" ?? "",
                  maxLines: 2,
                  fontSize: 15.sp,
                  textOverflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  children: [
                    CommonText(
                      text: "${productModel?.rating?.toString()}" ?? "",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    Icon(
                      Icons.star,
                      size: 10.r,
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
