import 'package:flutter/material.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Auth/Screens/create_password.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Auth/Screens/reset_password.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Auth/Screens/sign_up.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Auth/Screens/varification_code.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/Onboarding/onboarding.dart';
import 'package:hbk_blanket_app_design/Presentation/Widgets/Screens/Splash/splash.dart';

import '../../../Presentation/Widgets/Auth/Screens/login.dart';

class AppRouter {
  static const String splash = "/";
  static const String onboarding = "/onboarding";
  static const String login = "/login";
  static const String signUp = "/sign_up";
  static const String resetPassword = "/reset_password";
  static const String varificationCode = "/varification_code";
  static const String createPassword = "/create_password";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: ((context) => const Splash()),
        );
      case onboarding:
        return MaterialPageRoute(
          builder: ((context) => const Onboarding()),
        );
      case login:
        return MaterialPageRoute(
          builder: ((context) => const Login()),
        );
      case signUp:
        return MaterialPageRoute(
          builder: ((context) => const SignUp()),
        );
      case resetPassword:
        return MaterialPageRoute(
          builder: ((context) => const ResetPassword()),
        );
      case varificationCode:
        return MaterialPageRoute(
          builder: ((context) => const VarificationCode()),
        );
      case createPassword:
        return MaterialPageRoute(
          builder: ((context) => const CreatePassword()),
        );
    }

    return null;
  }
}
