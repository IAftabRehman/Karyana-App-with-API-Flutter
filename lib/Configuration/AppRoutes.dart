import 'package:flutter/cupertino.dart';
import 'package:internship_second_task/Presentation/CommonWidgets/CustomBottomBar.dart';
import 'package:internship_second_task/Presentation/Views/CheckOutScreen.dart';
import 'package:internship_second_task/Presentation/Views/ChooseBrand.dart';
import 'package:internship_second_task/Presentation/Views/HomeScreen.dart';
import 'package:internship_second_task/Presentation/Views/Login.dart';
import 'package:internship_second_task/Presentation/Views/NotFoundScreen.dart';
import 'package:internship_second_task/Presentation/Views/NotificationScreen.dart';
import 'package:internship_second_task/Presentation/Views/OnBoardingScreen.dart';
import 'package:internship_second_task/Presentation/Views/PlaceOrderScreen.dart';
import 'package:internship_second_task/Presentation/Views/ProductDetails.dart';
import 'package:internship_second_task/Presentation/Views/SavedItem.dart';
import '../Presentation/Views/OrdersScreen.dart';
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
  static const String savedItem = '/savedItem';
  static const String cartScreen = '/cartScreen';
  static const String bottomBar = '/bottomBar';
  static const String notFound = '/notFound';
  static const String checkOut = '/checkOut';
  static const String placeOrder = '/placeOrder';
  static const String notification = '/notification';
  static const String orders = '/orders';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    onBoarding: (context) => OnBoardingScreen(),
    login: (context) => LoginScreen(),
    signUp: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
    savedItem: (context) => SavedItem(),
    bottomBar: (context) => CustomBottomBar(),
    notFound: (context) => NotFoundScreen(),
    checkOut: (context) => CheckOutScreen(),
    placeOrder: (context) => PlaceOrderScreen(),
    notification: (context) => NotificationScreen(),
    orders: (context) => OrdersScreen(),
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
