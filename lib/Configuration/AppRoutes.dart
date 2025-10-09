import 'package:flutter/cupertino.dart';
import 'package:internship_second_task/Presentation/Views/ChooseBrand.dart';
import 'package:internship_second_task/Presentation/Views/HomeScreen.dart';
import 'package:internship_second_task/Presentation/Views/Login.dart';
import 'package:internship_second_task/Presentation/Views/OnBoardingScreen.dart';
import 'package:internship_second_task/Presentation/Views/ProductDetails.dart';
import '../Presentation/Views/SignUpScreen.dart';
import '../Presentation/Views/SplashScreen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onBoarding = '/onBoarding';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String homeScreen = '/homeScreen';
  static const String chooseBrand = '/chooseBrand';
  static const String productDetails = '/productDetails';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    onBoarding: (context) => OnBoardingScreen(),
    login: (context) => LoginScreen(),
    signUp: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.chooseBrand:
        final args = settings.arguments as Map<String, dynamic>;
        return CupertinoPageRoute(
          builder: (_) => ChooseBrand(
            image: args["image"],
            name: args["name"],
          ),
        );
      case AppRoutes.productDetails:
        final args = settings.arguments as Map<String, dynamic>;
        return CupertinoPageRoute(
          builder: (_) => ProductDetails(
            image: args["image"],
            name: args["name"],
          ),
        );
      default:
        return null;
    }
  }

}
