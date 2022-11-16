import 'package:e_wallet/ui/screens/sign_in_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_upload_profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:e_wallet/ui/widgets/custom_filled_button.dart';
import 'package:e_wallet/ui/widgets/custom_form_field.dart';
import 'package:e_wallet/ui/widgets/custom_text_button.dart';

import '../../shared/theme.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-up';

  const SignUpScreen({Key? key}) : super(key: key);

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
              bottom: 40,
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
            'Join Us to Unlock\nYour Growth',
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
                //NOTE: Name Input
                const CustomFormField(title: 'Full Name'),
                const SizedBox(height: 12),
                //NOTE: Email Input
                CustomFormField(title: 'Email Address'),
                const SizedBox(height: 12),
                //NOTE: Password Input
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 16),
                CustomFilledButtons(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(SignUpUploadProfileScreen.routeName);
                  },
                ),
              ],
            ),
          ),
          CustomTextButton(
            title: 'Sign In',
            onPressed: () {
              Navigator.of(context).pushNamed(SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
