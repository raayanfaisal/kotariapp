import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:joali_booking_app/common/colors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10.0),
      child: Text.rich(
        TextSpan(
          text: 'By continuing, you agree to our ',
          style: TextStyle(color: Colors.grey[600]),
          children: <TextSpan>[
            TextSpan(
              text: 'Terms of Service',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(color: Colors.grey[600]),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
