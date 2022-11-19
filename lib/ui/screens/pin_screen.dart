import 'package:e_wallet/ui/widgets/custom_input_pin_button.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class PinScreen extends StatelessWidget {
  static const routeName = '/pin-screen';
  const PinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sha PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: greyColor,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputPinButton(
                    title: '1',
                    onTap: () {},
                  ),
                  CustomInputPinButton(
                    title: '2',
                    onTap: () {},
                  ),
                  CustomInputPinButton(
                    title: '3',
                    onTap: () {},
                  ),
                  CustomInputPinButton(
                    title: '4',
                    onTap: () {},
                  ),
                  CustomInputPinButton(
                    title: '5',
                    onTap: () {},
                  ),
                  CustomInputPinButton(
                    title: '6',
                    onTap: () {},
                  ),
                  CustomInputPinButton(
                    title: '7',
                    onTap: () {},
                  ),
                  CustomInputPinButton(
                    title: '8',
                    onTap: () {},
                  ),
                  CustomInputPinButton(
                    title: '9',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomInputPinButton(
                    title: '0',
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                         ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
