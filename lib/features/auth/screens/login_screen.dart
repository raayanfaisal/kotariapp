import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joali_booking_app/common/colors.dart';
import 'package:joali_booking_app/common/constants.dart';
import 'package:joali_booking_app/features/auth/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:joali_booking_app/features/auth/providers/login_model.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var model = context.watch<LoginModel>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: screenPadding,
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  gapBetweenHeading,
                  Form(
                    child: Column(
                      children: [
                        IconFormField(
                          icon: Icons.alternate_email_outlined,
                          textFormField: TextFormField(
                            controller: emailController,
                            autofocus: true,
                            decoration: const InputDecoration(
                              hintText: 'Email',
                            ),
                          ),
                        ),
                        verticalGapBetweenFormFields,
                        IconFormField(
                          icon: Icons.lock_outline,
                          textFormField: TextFormField(
                            controller: passwordController,
                            obscureText: !model.visibility,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: () => model.setVisibility(),
                                icon: showVisibilityIcon(model.visibility),
                              ),
                            ),
                          ),
                        ),
                        verticalGapBetweenWidgets,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Forgot password?',
                                style: linkStyle(14.0),
                              ),
                            ),
                          ],
                        ),
                        verticalGapBetweenWidgets,
                        AuthButton(
                          text: 'Login',
                          fun: () {
                            model.loginWithEmailAndPassword(
                              emailController.text,
                              passwordController.text,
                            );
                          },
                        ),
                        verticalGapBetweenWidgets,
                        const DividerWithText(text: 'OR'),
                        verticalGapBetweenWidgets,
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: SocialAuthButton(
                                fun: () {},
                                icon: FontAwesomeIcons.google,
                                color: googleColor,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              flex: 1,
                              child: SocialAuthButton(
                                fun: () {},
                                icon: FontAwesomeIcons.facebook,
                                color: facebookColor,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              flex: 1,
                              child: SocialAuthButton(
                                fun: () {},
                                icon: FontAwesomeIcons.apple,
                                color: appleColor,
                              ),
                            )
                          ],
                        ),
                        verticalGapBetweenWidgets,
                        AuthNavLink(
                          leadingText: 'New to Joali Booking? ',
                          linkText: 'Register',
                          fun: () {
                            Navigator.pushNamed(context, 'register');
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
