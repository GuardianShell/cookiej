import 'package:cookiej/cookiej/action/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class CookieJColors{
  
  static const Map<String,Color> themeColors= {
    '经典黑':CookieJColors.classicalBlack,
    '谷歌蓝':Colors.blue,
    '薄荷青':Colors.teal,
    '琥珀黄':Colors.amber,
    '钢蓝灰':Colors.blueGrey,
    '胡萝卜':Colors.orange,
    '天空蓝':Colors.cyan,
    '中国红':Colors.red,
    '少女粉':CookieJColors.girlPink,
    '杏黄色':CookieJColors.apricotYellow
  };

  static const int customBlack = 0xFF24292E;
  static const int salmonPink=0xFFFA8072;
  static const int apricot=0xFFF8B878;
  static const MaterialColor apricotYellow=const MaterialColor(
    apricot,
    const<int,Color>{
      50: const Color(apricot),
      100: const Color(apricot),
      200: const Color(apricot),
      300: const Color(apricot),
      400: const Color(apricot),
      500: const Color(apricot),
      600: const Color(apricot),
      700: const Color(apricot),
      800: const Color(apricot),
      900: const Color(apricot),
    }
  );
  static const MaterialColor girlPink=const MaterialColor(
    salmonPink,
    const<int,Color>{
      50: const Color(salmonPink),
      100: const Color(salmonPink),
      200: const Color(salmonPink),
      300: const Color(salmonPink),
      400: const Color(salmonPink),
      500: const Color(salmonPink),
      600: const Color(salmonPink),
      700: const Color(salmonPink),
      800: const Color(salmonPink),
      900: const Color(salmonPink),
    },
  );
  static const MaterialColor classicalBlack = const MaterialColor(
    customBlack,
    const <int, Color>{
      50: const Color(customBlack),
      100: const Color(customBlack),
      200: const Color(customBlack),
      300: const Color(customBlack),
      400: const Color(customBlack),
      500: const Color(customBlack),
      600: const Color(customBlack),
      700: const Color(customBlack),
      800: const Color(customBlack),
      900: const Color(customBlack),
    },
  ); 
  static const Color primaryValue = Color(0xFF24292E);
  static const Color primaryLightValue = Color(0xFF42464b);
  static const Color primaryDarkValue = Color(0xFF121917);

  static const Color cardWhite = Color(0xFFFFFFFF);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color miWhite = Color(0xffececec);
  static const Color white = Color(0xFFFFFFFF);
  static const Color actionBlue = Color(0xff267aff);
  static const Color subTextColor = Color(0xff959595);
  static const Color subLightTextColor = Color(0xffc4c4c4);

  static const Color mainBackgroundColor = miWhite;

  static const Color mainTextColor = primaryDarkValue;
  static const Color textColorWhite = white;

  static pushTheme(Store store, String name) {
    ThemeData themeData;
    themeData = getThemeData(name);
    store.dispatch(RefreshThemeState(ThemeState(name,themeData)));
  }

  static getThemeData(String themeName,{bool isDarkMode=false}) {
    return ThemeData(primarySwatch: themeColors[themeName],brightness: isDarkMode?Brightness.dark:Brightness.light);
  }

}

class CookieJTextStyle{
  static const lagerTextSize = 30.0;
  static const bigTextSize = 23.0;
  static const normalTextSize = 18.0;
  static const middleTextWhiteSize = 16.0;
  static const smallTextSize = 14.0;
  static const minTextSize = 12.0;

  static const minText = TextStyle(
    
    color: CookieJColors.subLightTextColor,
    fontSize: minTextSize,
    fontFamily: 'fontawesome',
  );

  static const smallTextWhite = TextStyle(
    color: CookieJColors.textColorWhite,
    fontSize: smallTextSize,
    fontFamily: 'fontawesome',
  );

  static const smallText = TextStyle(
    color: CookieJColors.mainTextColor,
    fontSize: smallTextSize,
    fontFamily: 'fontawesome',
  );

  static const smallTextBold = TextStyle(
    color: CookieJColors.mainTextColor,
    fontSize: smallTextSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const smallSubLightText = TextStyle(
    color: CookieJColors.subLightTextColor,
    fontSize: smallTextSize,
    fontFamily: 'fontawesome',
  );

  static const smallActionLightText = TextStyle(
    color: CookieJColors.actionBlue,
    fontSize: smallTextSize,
    fontFamily: 'fontawesome',
  );

  static const smallMiLightText = TextStyle(
    color: CookieJColors.miWhite,
    fontSize: smallTextSize,
    fontFamily: 'fontawesome',
  );

  static const smallSubText = TextStyle(
    color: CookieJColors.subTextColor,
    fontSize: smallTextSize,
    fontFamily: 'fontawesome',
  );

  static const middleText = TextStyle(
    color: CookieJColors.mainTextColor,
    fontSize: middleTextWhiteSize,
    fontFamily: 'fontawesome',
  );

  static const middleTextWhite = TextStyle(
    color: CookieJColors.textColorWhite,
    fontSize: middleTextWhiteSize,
    fontFamily: 'fontawesome',
  );

  static const middleSubText = TextStyle(
    color: CookieJColors.subTextColor,
    fontSize: middleTextWhiteSize,
    fontFamily: 'fontawesome',
  );

  static const middleSubLightText = TextStyle(
    color: CookieJColors.subLightTextColor,
    fontSize: middleTextWhiteSize,
    fontFamily: 'fontawesome',
  );

  static const middleTextBold = TextStyle(
    color: CookieJColors.mainTextColor,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const middleTextWhiteBold = TextStyle(
    color: CookieJColors.textColorWhite,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const middleSubTextBold = TextStyle(
    color: CookieJColors.subTextColor,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const normalText = TextStyle(
    color: CookieJColors.mainTextColor,
    fontSize: normalTextSize,
    fontFamily: 'fontawesome',
  );

  static const normalTextBold = TextStyle(
    color: CookieJColors.mainTextColor,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const normalSubText = TextStyle(
    color: CookieJColors.subTextColor,
    fontSize: normalTextSize,
    fontFamily: 'fontawesome',
  );

  static const normalTextWhite = TextStyle(
    color: CookieJColors.textColorWhite,
    fontSize: normalTextSize,
    fontFamily: 'fontawesome',
  );

  static const normalTextMitWhiteBold = TextStyle(
    color: CookieJColors.miWhite,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const normalTextActionWhiteBold = TextStyle(
    color: CookieJColors.actionBlue,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const normalTextLight = TextStyle(
    color: CookieJColors.primaryLightValue,
    fontSize: normalTextSize,
    fontFamily: 'fontawesome',
  );

  static const largeText = TextStyle(
    color: CookieJColors.mainTextColor,
    fontSize: bigTextSize,
    fontFamily: 'fontawesome',
  );

  static const largeTextBold = TextStyle(
    color: CookieJColors.mainTextColor,
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const largeTextWhite = TextStyle(
    color: CookieJColors.textColorWhite,
    fontSize: bigTextSize,
    fontFamily: 'fontawesome',
  );

  static const largeTextWhiteBold = TextStyle(
    color: CookieJColors.textColorWhite,
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const largeLargeTextWhite = TextStyle(
    color: CookieJColors.textColorWhite,
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );

  static const largeLargeText = TextStyle(
    color: CookieJColors.primaryValue,
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
    fontFamily: 'fontawesome',
  );
}