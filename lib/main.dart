import 'package:e_wallet/ui/screens/home_screen.dart';
import 'package:e_wallet/ui/screens/onboardingscreen.dart';
import 'package:e_wallet/ui/screens/profile_screen.dart';
import 'package:e_wallet/ui/screens/sign_in_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_set_ktp_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_success_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_upload_profile_screen.dart';
import 'package:e_wallet/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

      ),
      home: const SplashScreen(),
      routes: {
        OnboardingScreen.routeName : (ctx) => const OnboardingScreen(),
        SignInScreen.routeName : (ctx) => const SignInScreen(),
        SignUpScreen.routeName : (ctx) => const SignUpScreen(),
        SignUpUploadProfileScreen.routeName : (ctx) => const SignUpUploadProfileScreen(),
        SignUpSetKtpScreen.routeName : (ctx) => const SignUpSetKtpScreen(),
        SignUpSuccessScreen.routeName : (ctx) => const SignUpSuccessScreen(),
        HomeScreen.routeName : (ctx) => const HomeScreen(),
        ProfileScreen.routeName : (ctx) => const ProfileScreen(),
      },
    );
  }
}