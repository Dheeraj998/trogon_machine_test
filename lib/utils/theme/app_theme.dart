import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_media_machine_test/utils/theme/app_color.dart';

class Themes {
  static final lightTheme = ThemeData(
      useMaterial3: true,
      dividerColor: AppColors.dividerColor,
      // datePickerTheme: DatePickerThemeData(),
      dividerTheme: DividerThemeData(color: AppColors.dividerColor),
      textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.cBlack,
          selectionHandleColor: AppColors.cBlack),
      scaffoldBackgroundColor: AppColors.scaffoldBgColor,
      primaryColor: AppColors.primaryColor,
      iconTheme: const IconThemeData(color: AppColors.cBlack),
      colorScheme: const ColorScheme.light(
        background: AppColors.scaffoldBgColor,
        primary: AppColors.cWhite,
        // onSecondary: AppColors.cRed,
        secondary: AppColors.cWhite,
        onTertiary: AppColors.cWhite,
        tertiary: Colors.black,
        tertiaryContainer: AppColors.cRed,
      ),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //     selectedIconTheme: const IconThemeData(
      //       color: AppColors.cRed,
      //     ),
      // unselectedIconTheme:
      //     const IconThemeData(color: AppColors.unSelectedBottomNavColor),
      // unselectedItemColor: AppColors.unSelectedBottomNavColor,
      // unselectedLabelStyle: GoogleFonts.inter(
      //     fontSize: 10.sp,
      //     fontWeight: FontWeight.w400,
      //     color: AppColors.unSelectedBottomNavColor),
      // selectedLabelStyle: GoogleFonts.inter(
      //     fontSize: 10.sp,
      //     fontWeight: FontWeight.w400,
      //     color: AppColors.cRed),
      // selectedItemColor: AppColors.cRed,
      // backgroundColor: AppColors.bottomNavBgColor),
      // focusColor: AppColors.buttonLightColor,
      // hintColor: ,
      // appBarTheme: const AppBarTheme(
      //   color: AppColors.darkBackGroundColor,
      // ),
      // dropdownMenuTheme: DropdownMenuThemeData(
      //     menuStyle: MenuStyle(
      //         backgroundColor: MaterialStateProperty.all(AppColors.cWhite))),
      // appBarTheme: const AppBarTheme(
      //     backgroundColor: AppColors.scaffoldBgColor,
      //     surfaceTintColor: AppColors.cWhite),
      textTheme: TextTheme(
        bodyMedium: GoogleFonts.dmSans(
          fontSize: 14,
          color: AppColors.cBlack,
          fontWeight: FontWeight.w400,
        ),
      ));

  // dark theme
  // static final darkTheme = ThemeData(
  //   useMaterial3: true,
  //   scaffoldBackgroundColor: AppColors.scaffoldBgDarkColor,
  //   iconTheme: const IconThemeData(color: AppColors.cWhite),
  //   colorScheme: const ColorScheme.dark(
  //     background: AppColors.scaffoldBgDarkColor,
  //     primary: AppColors.scaffoldBgDarkColor, //black -->>white
  //     secondary: AppColors.cRed, //red -->>white
  //     onTertiary: AppColors.cBlack, //black -->white
  //     tertiary: AppColors.cWhite, //white --> black
  //     // onSecondary: Colors.white, //white --> red
  //     tertiaryContainer: AppColors.cWhite,
  //   ),
  //   textSelectionTheme:
  //       TextSelectionThemeData(cursorColor: AppColors.cWhite.withOpacity(.5)),
  //   bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //     selectedItemColor: AppColors.cWhite,
  //     unselectedIconTheme:
  //         const IconThemeData(color: AppColors.unSelectedBottomNavColor),
  //     selectedIconTheme: const IconThemeData(
  //       color: AppColors.cWhite,
  //     ),
  //     unselectedItemColor: AppColors.unSelectedBottomNavColor,
  //     backgroundColor: AppColors.bottomNavDarkBgColor,
  //     unselectedLabelStyle: GoogleFonts.inter(
  //         fontSize: 10.sp,
  //         fontWeight: FontWeight.w400,
  //         color: AppColors.unSelectedBottomNavColor),
  //     selectedLabelStyle: GoogleFonts.inter(
  //         fontSize: 10.sp,
  //         fontWeight: FontWeight.w400,
  //         color: AppColors.cWhite),
  //   ),
  //   primaryColor: AppColors.primaryDarkColor,
  //   appBarTheme: AppBarTheme(
  //     backgroundColor: AppColors.scaffoldBgDarkColor,
  //     systemOverlayStyle: const SystemUiOverlayStyle(
  //         statusBarIconBrightness: Brightness.light,
  //         statusBarColor: AppColors.cWhite),
  //     // backgroundColor: AppColors.darkBackGroundColor,
  //     titleTextStyle: TextStyle(
  //       color: AppColors.cWhite,
  //       fontSize: 30.sp,
  //       fontWeight: FontWeight.w600,
  //     ),
  //   ),
  //   textTheme: TextTheme(
  //     bodyMedium: GoogleFonts.dmSans(
  //       fontSize: 14,
  //       color: AppColors.cWhite,
  //       fontWeight: FontWeight.w400,
  //     ),
  //   ),
  // );
}



//  displayLarge: GoogleFonts.inter(
//         // color: cWhite,
//         fontSize: 34.sp,
//         color: AppColors.cWhite,
//         fontWeight: FontWeight.w600,
//       ),
//       titleMedium: GoogleFonts.inter(
//         fontSize: 25.sp,
//         color: AppColors.cWhite,
//         fontWeight: FontWeight.w500,
//       ),
//       titleSmall: GoogleFonts.inter(
//         fontSize: 18.sp,
//         color: AppColors.cWhite,
//         fontWeight: FontWeight.w500,
//       ),
//       labelLarge: GoogleFonts.inter(
//         fontSize: 20.sp,
//         color: AppColors.cWhite,
//         // letterSpacing: 0.01,
//         fontWeight: FontWeight.w400,
//       ),

//       /// Button text
//       labelMedium: GoogleFonts.inter(
//         fontSize: 14.sp,
//         color: AppColors.cWhite,
//         letterSpacing: 0.02,
//         fontWeight: FontWeight.w500,
//       ),
//       labelSmall: GoogleFonts.inter(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.w400,
//         color: AppColors.cWhite,
//         // color: bodySecondaryTextColor.withOpacity(0.6),
//       ),
//        bodySmall: GoogleFonts.inter(
//         color: AppColors.cWhite,
//         fontSize: 12.sp,
//         fontWeight: FontWeight.w500,
//       ),