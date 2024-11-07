import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:trogon_media_machine_test/common/common_text.dart';
import 'package:trogon_media_machine_test/common/shimmer_widget.dart';
import 'package:trogon_media_machine_test/controller/home_controller.dart';
import 'package:trogon_media_machine_test/utils/api_services/api_response.dart';
import 'package:trogon_media_machine_test/utils/theme/app_color.dart';
import 'package:trogon_media_machine_test/view/product_detail_screen.dart';
import 'package:trogon_media_machine_test/view/widgets/product_listtile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchCtr = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeController>().getHomeListApiFn(context);
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.verticalSpace,
              CommonText(
                text: "Select Category",
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 70.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          height: 70.h,
                          width: 70.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.lightOrange),
                        ),
                    separatorBuilder: (context, index) => 15.horizontalSpace,
                    itemCount: 5),
              ),
              30.verticalSpace,
              _searchWidget(),
              30.verticalSpace,
              _listWidget()
            ],
          ),
        ),
      ),
    );
  }

  Consumer<HomeController> _listWidget() {
    return Consumer<HomeController>(builder: (context, home, _) {
      return Expanded(
          child: home.homeApiResponse?.loading == true
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 8.0, // spacing between rows
                    crossAxisSpacing: 8.0, // spacing between columns
                  ),
                  itemBuilder: (context, index) {
                    return ErrorShimmerWidget(width: 40.w, height: 40.h);
                  },
                  itemCount: 10,
                )
              : home.homeApiResponse?.status == APIstatus.onNetworkError
                  ? const Column(
                      children: [CommonText(text: "No internet")],
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // number of items in each row
                        mainAxisSpacing: 15, // spacing between rows
                        crossAxisSpacing: 15, // spacing between columns
                      ),
                      padding:
                          const EdgeInsets.all(8.0), // padding around the grid
                      itemCount:
                          home.filteredList?.length, // total number of items
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductDetailScreen(
                                      productModel: home.filteredList?[index],
                                    )));
                          },
                          child: ProductListTileWidget(
                            productModel: home.filteredList?[index],
                          ),
                        );
                      },
                    ));
    });
  }

  Consumer<HomeController> _searchWidget() {
    return Consumer<HomeController>(builder: (context, home, _) {
      return TextFormField(
        controller: _searchCtr,
        onChanged: (value) {
          context.read<HomeController>().searchFn(text: value);
        },
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Icon(Icons.search),
          ),
          suffixIcon: Visibility(
            visible: _searchCtr.text.isNotEmpty,
            child: GestureDetector(
              onTap: () {
                context.read<HomeController>().clearSearchFn();
                _searchCtr.clear();
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Icon(Icons.close),
              ),
            ),
          ),
          hintText: "Search Products...",
          hintStyle:
              TextStyle(color: AppColors.lightGreyTextColor, fontSize: 13.sp),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.borderColor)),
        ),
      );
    });
  }
}
