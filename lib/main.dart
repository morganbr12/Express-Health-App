import 'package:expresshealth/login_screens/signup_screen.dart';
import 'package:flutter/material.dart';

import './screens/home_page_screen.dart';
import './screens/users_profile_page_screen.dart';
import './screens/all_top_doc.dart';
import './screens/user_info_page_screen.dart';
import './screens/all_categories_screen.dart';
import './screens/settings_screen.dart';
import './screens/help_screen.dart';
import './screens/subscription_screen.dart';
import './screens/upcoming_schedule_screen.dart';
// import './screens/appointment_screen.dart';
import './screens/chat_page_screen.dart';
import './screens/single_category_screen.dart';
import './screens/new_chat_screen.dart';
import './screens/chat_place_screen.dart';
import './login_screens/Login_signUp.dart';
import './login_screens/verify_page.dart';
import './splashscreen/splashscreen.dart';
import './login_screens/signup_screen.dart';







void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white.withOpacity(0.99),
        primaryColor: Color.fromRGBO(19, 169, 214, 1),
        accentColor: Colors.black,
        // brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 1.0,
          iconTheme: IconThemeData(
            color: Colors.black
          ),

        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 24,
                fontFamily: "RobotoCondensed",
              ),
            ),
      ),
      // home: EHHomePageScreen(),
      initialRoute: '/splash',
      routes: {
        '/splash': (ctx) => SplashScreen(),
        '/verify': (ctx) => VerifyPage(),
        '/login_signUp': (ctx) => LoginSignUpPage(),
        '/': (ctx) => EHHomePageScreen(),
        '/doctorsProfile': (ctx) => UsersProfilePageScreen(),
        '/all_top_doc': (ctx) => TopDoctorsRange(),
        '/user_info_page': (ctx) => UserInfoPage(),
        '/all_categories_page': (ctx) => AllCategoriesScreen(),
        '/settings_screen': (ctx) => SettingsPageScreen(),
        '/help_screen': (ctx) => HelpScreenPage(),
        '/subscription': (ctx) => SubscriptionPage(),
        '/upcoming_schedule': (ctx) => UpComingScreenPage(),
        // '/appointment_schedule': (ctx) => PageScreenAppointment(),
        '/chat_page': (ctx) => ChatHomePageScreen(),
        '/singleCateData': (ctx) => SingleCategoryScreen(),
        '/new_chat': (ctx) => NewChatScreen(),
        '/chat_screen': (ctx) => ChatPlaceScreen(),
        '/signup_page': (ctx) => SignUpScreenPage(),
      },
    );
  }
}
