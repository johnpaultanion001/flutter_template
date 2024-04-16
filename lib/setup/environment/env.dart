//THIS IS ENV OF THE APP
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ENV {
  //ENDPOINTS
  static String stagingUrl = 'https://staging-test/api/';
  static String prodUrl = 'https://prod-test/api/';

  // IMAGES
  static String logo = "assets/images/test-logo.png";
  static String footerLogo = "assets/images/value_care.png";
  static String whatsHotBanner = "assets/images/banner.png";

  // COLORS
  //BG COLOR
  static Color primaryBgColor = HexColor("#FF3A47");
  static Color secondaryBgColor = HexColor("#FFFFFF");
  static Color grayBgColor = Colors.grey;

  //FONT COLOR
  static Color primaryTextColor = HexColor("#FF3A47");
  static Color secondaryTextColor = const Color.fromARGB(255, 139, 125, 125);
  static Color whiteTextColor = Colors.white;

  //BUTTON COLOR
  static Color primaryButtonColor = HexColor("#FF3A47");

  // BOX SHADOW COLOR
  static Color boxShadow = Colors.grey.withOpacity(0.5);

  // NAVIGATION BAR
  // SCREEN 1
  static String titleNav1 = "Home";
  static Icon iconNav1 = const Icon(Icons.home);
  // SCREEN 2
  static String titleNav2 = "Wellness";
  static Icon iconNav2 = const Icon(Icons.monitor_heart_outlined);
  // SCREEN 3
  static String titleNav3 = "Screen 3";
  static Icon iconNav3 = const Icon(Icons.account_circle_outlined);
  // SCREEN 4
  static String titleNav4 = "Screen 4";
  static Icon iconNav4 = const Icon(Icons.account_circle_outlined);
  // SCREEN 5
  static String titleNav5 = "Screen 5";
  static Icon iconNav5 = const Icon(Icons.account_circle_outlined);

  // ONBOARDING SCREEN
  // PAGE 1
  static String imagePage1 = "assets/images/red.jpg";
  static String titlePage1 = "E-MEDICAL CARD";
  static String descPage1 = '''
    Access cashless visits at
    clinic and hospitals
    ''';
  static String buttonPage1 = "NEXT";

  // PAGE 2
  static String imagePage2 = "assets/images/test.jpeg";
  static String titlePage2 = "MEDICAL UTILIZATION";
  static String descPage2 = '''
    Get a comprehensive
    overview of your benefit
    entitlments and usage
    ''';
  static String buttonPage2 = "NEXT";

  // PAGE 3
  static String imagePage3 = "assets/images/red.jpg";
  static String titlePage3 = "PANEL LOCATOR";
  static String descPage3 = '''
    Explore over 4000+ nearby
    provides with our
    comprehensive panel
    search feature
    ''';
  static String buttonPage3 = "NEXT";

  // LOGIN SCREEN
  static String loginNavTitle = "LOGIN";
  static String registerNavTitle = "REGISTER";
  static String emailLbl = "Email / User ID";
  static String passLbl = "Password";
  static String TermsAndConditionLbl =
      "By logging in, you are agree to the Terms of Use & Privacy Policy";
  static String loginButton = "LOGIN";
  static String forgotUserPassLbl = "Forgot your User ID or Password?";

  // VERSION
  static String version = "Version 1.0.0";
}
