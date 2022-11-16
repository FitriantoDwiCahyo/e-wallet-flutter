import 'package:e_wallet/ui/screens/sign_up_set_ktp_screen.dart';
import 'package:e_wallet/ui/widgets/custom_filled_button.dart';
import 'package:e_wallet/ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SignUpUploadProfileScreen extends StatelessWidget {
  static const routeName = 'sign-up-upload-profile';
  const SignUpUploadProfileScreen({Key? key}) : super(key: key);

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
              children: <Widget>[
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                ),
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: lightBackgroundColor,
                //   ),
                //   child: Center(
                //     child: Image.asset('assets/ic_upload.png', width: 32),
                //   ),
                // ),
                const SizedBox(height: 16),
                Text(
                  'Rian Dwi',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomFormField(title: 'Set PIN (6 digit number)',obscureText: true,),
                const SizedBox(height: 20),
                CustomFilledButtons(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(SignUpSetKtpScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
