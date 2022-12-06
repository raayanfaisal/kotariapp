import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:joali_booking_app/common/constants.dart';

class AuthNavLink extends StatelessWidget {
  final String leadingText;
  final String linkText;
  final VoidCallback fun;

  const AuthNavLink(
      {Key? key,
      required this.leadingText,
      required this.linkText,
      required this.fun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10.0),
      child: Text.rich(
        TextSpan(
          text: leadingText,
          style: TextStyle(color: Colors.grey[600]),
          children: <TextSpan>[
            TextSpan(
              text: linkText,
              style: linkStyle(14.0),
              recognizer: TapGestureRecognizer()..onTap = fun,
            ),
          ],
        ),
      ),
    );
  }
}
