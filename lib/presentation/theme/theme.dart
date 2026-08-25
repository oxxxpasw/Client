import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/constants.dart';
import 'package:sosedifedi/presentation/theme/models/app_fonts.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

import 'models/additional_text_theme/additional_text_theme.dart';

@module
abstract class MainTheme {
  @injectable
  ThemeData themeData({
    @factoryParam AppColors? colors,
    @factoryParam Brightness? brightness,
  }) {
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;
    final appColors = colors ?? AppColors.base();
    brightness ??= Brightness.light;
    final colorScheme = ColorScheme.fromSeed(
      seedColor: appColors.primary,
      brightness: brightness,
      primary: appColors.primary,
      onPrimary: appColors.onPrimary,
      secondary: appColors.secondary,
      onSecondary: appColors.onSecondary,
      surface: appColors.primaryBackground,
      onSurface: appColors.textColor,
      onSurfaceVariant: appColors.iconsBar,
      background: appColors.primaryBackground,
      onBackground: appColors.textColor,
      error: appColors.error,
      onError: appColors.onPrimary,
      surfaceContainer: appColors.surfaceContainer,
      surfaceContainerHigh: appColors.surfaceContainerHigh,
      surfaceContainerHighest: appColors.labelColor,
    );
    final typography = Typography.material2021(
      colorScheme: colorScheme,
    );

    final textTheme = typography.englishLike.merge(typography.black);

    return ThemeData(
      fontFamily: AppFonts.inter,
      dialogBackgroundColor: appColors.secondaryBackground,
      dialogTheme: DialogThemeData(
        backgroundColor: appColors.secondaryBackground,
      ),
      typography: typography,
      dividerTheme: DividerThemeData(
        indent: 0.0,
        endIndent: 0.0,
        color: appColors.iconsBar,
        space: AppInsets.padding32,
        thickness: 0.5,
      ),
      brightness: brightness,
      scaffoldBackgroundColor: appColors.primaryBackground,
      primaryColor: appColors.primary,
      snackBarTheme: SnackBarThemeData(
        actionTextColor: appColors.textColor,
        backgroundColor: appColors.secondaryBackground,
        contentTextStyle: const TextStyle(
          fontFamily: AppFonts.inter,
        ),
      ),
      colorScheme: colorScheme,
      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: appColors.labelColor,
        prefixIconColor: appColors.labelColor,
        hintStyle: textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w600,
          color: appColors.primary,
        ),
        helperStyle: textTheme.bodyMedium!.copyWith(
          color: appColors.labelColor,
        ),
        errorStyle: textTheme.bodyMedium!.copyWith(
          color: appColors.error,
        ),
        labelStyle: textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w400,
          color: appColors.labelColor,
        ),
        floatingLabelStyle: textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w400,
          color: appColors.labelColor,
        ),
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: AppInsets.padding8,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: appColors.iconsBar,
          ),
          borderRadius: BorderRadius.zero,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: appColors.iconsBar,
          ),
          borderRadius: BorderRadius.zero,
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: appColors.secondaryBackground,
          ),
          borderRadius: BorderRadius.zero,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: appColors.primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.zero,
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: appColors.error,
          ),
          borderRadius: BorderRadius.zero,
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: appColors.error,
          ),
          borderRadius: BorderRadius.zero,
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        shadowColor: const Color(0x19000000),
        indicatorColor: Colors.transparent,
        // indicatorColor: appColors.primary,
        // indicatorShape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        backgroundColor: const Color(0xFF2B2B2B),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) {
            final style = TextStyle(color: appColors.labelColor, fontSize: 8.0);
            if (states.contains(WidgetState.selected)) {
              return style.copyWith(
                color: Colors.white,
              );
            }
            return style;
          },
        ),
        iconTheme: WidgetStateProperty.resolveWith(
          (states) {
            final theme = IconThemeData(
              color: appColors.labelColor,
              size: AppInsets.padding32,
            );
            if (states.contains(WidgetState.selected)) {
              return theme.copyWith(
                color: Colors.white,
              );
            }
            return theme;
          },
        ),
      ),
      cardTheme: CardThemeData(
        color: appColors.secondaryBackground,
        margin: EdgeInsets.zero,
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              AppBorderRadius.large,
            ),
          ),
        ),
      ),
      splashColor: const Color(0x66BCBCBC),
      highlightColor: const Color(0x66BCBCBC),
      canvasColor: appColors.primaryBackground,
      shadowColor: Colors.black54,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: appColors.primaryBackground,
        elevation: 4.0,
        unselectedItemColor: appColors.labelColor,
        selectedItemColor: appColors.primary,
        selectedLabelStyle: textTheme.labelSmall,
        unselectedLabelStyle: textTheme.labelSmall,
      ),
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0.0,
        toolbarHeight: kCustomToolbarHeight,
        titleTextStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.inter,
          color: appColors.textColor,
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 24.0,
          color: appColors.textColor,
        ),
        backgroundColor: appColors.primaryBackground,
        shadowColor: const Color(0x19000000),
        centerTitle: true,
      ),
      badgeTheme: BadgeThemeData(
          backgroundColor: appColors.red400,
          smallSize: 6.0,
          largeSize: 30.0,
          padding: const EdgeInsets.all(AppInsets.padding2)),
      tabBarTheme: TabBarThemeData(
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: ShapeDecoration(
          shape: const StadiumBorder(),
          color: appColors.primary,
        ),
        labelColor: colorScheme.onPrimary,
        unselectedLabelColor: colorScheme.primary,
        labelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w500,
          height: 1.33,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w500,
          height: 1.33,
        ),
      ),
      iconTheme: IconThemeData(
        color: kDefaultIconDarkColor,
        size: 24,
      ),
      listTileTheme: ListTileThemeData(
        tileColor: appColors.secondaryBackground,
        selectedTileColor: appColors.primary,
        iconColor: appColors.labelColor,
        textColor: appColors.textColor,
        style: ListTileStyle.drawer,
        minVerticalPadding: 0.0,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: AppInsets.padding16),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              vertical: AppInsets.padding12,
              horizontal: AppInsets.padding20,
            ),
          ),
          overlayColor: WidgetStateProperty.all<Color>(const Color(0x10000000)),
          textStyle: WidgetStateProperty.all<TextStyle>(
            textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          iconSize: const WidgetStatePropertyAll(26.0),
          minimumSize: WidgetStateProperty.all<Size>(
            AppMinButtonSize.large,
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppBorderRadius.large),
            ),
          ),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(
              color: appColors.primary,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStateProperty.all<Color>(appColors.onPrimary),
          iconSize: WidgetStateProperty.all<double>(24.0),
          padding: WidgetStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              vertical: AppInsets.padding12,
              horizontal: AppInsets.padding20,
            ),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          minimumSize: WidgetStateProperty.all<Size>(
            AppMinButtonSize.medium,
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.transparent;
              }
              return appColors.surfaceContainer;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return appColors.labelColor;
              }
              return appColors.primary;
            },
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppBorderRadius.medium),
            ),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              vertical: AppInsets.padding12,
              horizontal: AppInsets.padding20,
            ),
          ),
          overlayColor: WidgetStateProperty.all<Color>(const Color(0x33FFFFFF)),
          textStyle: WidgetStateProperty.all<TextStyle>(
            textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          iconSize: const WidgetStatePropertyAll(26.0),
          minimumSize: WidgetStateProperty.all<Size>(
            AppMinButtonSize.large,
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return appColors.disabled;
              }
              return appColors.primary;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return appColors.labelColor;
              }
              return appColors.onPrimary;
            },
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppBorderRadius.large),
            ),
          ),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return appColors.primary;
          }
          return null;
        }),
        checkColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            return appColors.secondaryBackground;
          },
        ),
        side: BorderSide(color: appColors.labelColor, width: 2.0),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(
          color: appColors.textColor,
          fontSize: 17,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
        menuStyle: const MenuStyle(),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return appColors.primary;
          }
          return appColors.labelColor;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return colorScheme.primary;
            }
            return appColors.labelColor;
          },
        ),
        trackColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return colorScheme.primary.withAlpha(0x55);
            }
            return Colors.transparent;
          },
        ),
        trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primary.withOpacity(0.54);
            }
            return colorScheme.primary;
          },
        ),
      ),
      cupertinoOverrideTheme: cupertinoThemeData(
        appColors: appColors,
        brightness: brightness,
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: appColors.primaryBackground,
        hourMinuteColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColors.secondaryBackground;
            }
            return Colors.transparent;
          },
        ),
        hourMinuteTextColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColors.primary;
            }
            return appColors.textColor;
          },
        ),
        dayPeriodColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColors.secondaryBackground;
            }
            return Colors.transparent;
          },
        ),
        dayPeriodTextColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColors.primary;
            }
            return appColors.textColor;
          },
        ),
        dayPeriodShape: RoundedRectangleBorder(
          side: BorderSide(color: appColors.textColor),
        ),
        dialBackgroundColor: Colors.transparent,
        dialTextColor: appColors.textColor,
        dialHandColor: appColors.primary,
        entryModeIconColor: appColors.textColor,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: appColors.primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      actionIconTheme: ActionIconThemeData(
        backButtonIconBuilder: (context) {
          return const Icon(Icons.arrow_back);
        },
        closeButtonIconBuilder: (context) {
          return Container(
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: appColors.secondaryBackground,
            ),
            padding: const EdgeInsets.all(AppInsets.padding8),
            child: const Padding(
              padding: EdgeInsets.only(right: AppInsets.padding2),
              child: Icon(
                Icons.close,
              ),
            ),
          );
        },
      ),
      searchBarTheme: SearchBarThemeData(
        constraints: BoxConstraints.tight(const Size.fromHeight(36.0)),
        textStyle: WidgetStateProperty.all(
          textTheme.bodySmall,
        ),
        elevation: WidgetStateProperty.all(0.0),
        backgroundColor: WidgetStateProperty.all(appColors.secondaryBackground),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppBorderRadius.medium,
            ),
          ),
        ),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        modalBackgroundColor: colorScheme.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppBorderRadius.large),
            topRight: Radius.circular(AppBorderRadius.large),
          ),
        ),
      ),
      extensions: [
        CustomThemeExtension(appColors: appColors),
        AdditionalTextThemeExtension(
          additionalTextTheme: AdditionalTextTheme(
            titleMediumReg: TextStyle(
              fontFamily: AppFonts.inter,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              height: 1.5,
              letterSpacing: 0.15,
              color: appColors.textColor,
              decoration: TextDecoration.none,
            ),
            labelExtraSmall: TextStyle(
              fontFamily: AppFonts.inter,
              fontSize: 8.0,
              fontWeight: FontWeight.w500,
              height: 1.125,
              letterSpacing: 0.5,
              color: appColors.textColor,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        FlashToastTheme(
          backgroundColor: const Color(0xFF2B2B2B),
          elevation: 0.0,
          shape: const StadiumBorder(),
          alignment: const Alignment(0.0, 0.9),
          textStyle: textTheme.bodyMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          iconColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: AppInsets.padding20,
            vertical: AppInsets.padding10,
          ),
          margin: const EdgeInsets.all(AppInsets.padding16),
        )
      ],
    );
  }

  @injectable
  CupertinoThemeData cupertinoThemeData({
    @factoryParam AppColors? appColors,
    @factoryParam Brightness? brightness,
  }) {
    appColors ??= AppColors.base();
    brightness ??= Brightness.dark;
    return CupertinoThemeData(
      brightness: brightness,
      textTheme: CupertinoTextThemeData(
        primaryColor: appColors.textColor,
        textStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 17.0,
          letterSpacing: -0.41,
          color: appColors.textColor,
          decoration: TextDecoration.none,
        ),
        actionTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 17.0,
          letterSpacing: -0.41,
          color: appColors.primary,
          decoration: TextDecoration.none,
        ),
        tabLabelTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 10.0,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.24,
          color: appColors.secondaryBackground,
        ),
        navActionTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 17.0,
          letterSpacing: -0.41,
          color: appColors.primary,
          decoration: TextDecoration.none,
        ),
        pickerTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 21.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.6,
          color: appColors.textColor,
        ),
        dateTimePickerTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 21,
          fontWeight: FontWeight.normal,
          color: appColors.textColor,
        ),
        navTitleTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.41,
          color: appColors.textColor,
        ),
        navLargeTitleTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 34.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.41,
          color: appColors.textColor,
        ),
      ),
      primaryColor: appColors.primary,
      primaryContrastingColor: appColors.textColor,
      barBackgroundColor: appColors.primaryBackground,
      scaffoldBackgroundColor: appColors.primaryBackground,
    );
  }
}
