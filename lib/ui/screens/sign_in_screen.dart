import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/screens/home_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_screen.dart';
import 'package:e_wallet/ui/widgets/custom_filled_button.dart';
import 'package:e_wallet/ui/widgets/custom_form_field.dart';
import 'package:e_wallet/ui/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/sign-in';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 60,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_light.png',
                ),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //NOTE: Email Input
                const CustomFormField(title: 'Email Address'),
                const SizedBox(height: 12),
                //NOTE: Password Input
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(height: 12),
                CustomFilledButtons(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        HomeScreen.routeName, (route) => false);
                  },
                ),
              ],
            ),
          ),
          CustomTextButton(
            title: 'Create New Account',
            onPressed: () {
              Navigator.of(context).pushNamed(SignUpScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
