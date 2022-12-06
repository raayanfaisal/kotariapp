import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joali_booking_app/common/colors.dart';
import 'package:joali_booking_app/common/constants.dart';
import 'package:joali_booking_app/features/auth/providers/register_model.dart';
import 'package:joali_booking_app/features/auth/widgets/terms_and_conditions.dart';
import 'package:joali_booking_app/features/auth/widgets/widgets.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var model = context.watch<RegisterModel>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: screenPadding,
              child: Column(
                children: [
                  Text(
                    'Register',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  gapBetweenHeading,
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
                  const DividerWithText(text: 'Or register with email...'),
                  verticalGapBetweenWidgets,
                  Form(
                    child: Column(
                      children: [
                        IconFormField(
                          icon: Icons.person_outline,
                          textFormField: TextFormField(
                            controller: fullNameController,
                            autofocus: true,
                            decoration: const InputDecoration(
                              hintText: 'Full name',
                            ),
                          ),
                        ),
                        verticalGapBetweenFormFields,
                        IconFormField(
                          icon: Icons.alternate_email_outlined,
                          textFormField: TextFormField(
                            controller: emailController,
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
                        const TermsAndConditions(),
                        verticalGapBetweenWidgets,
                        AuthButton(
                          text: 'Register',
                          fun: () {
                            model.registerWithEmailAndPassword(
                              fullNameController.text,
                              emailController.text,
                              passwordController.text,
                            );
                            Navigator.pop(context);
                          },
                        ),
                        verticalGapBetweenWidgets,
                        AuthNavLink(
                          leadingText: 'Already have an account? ',
                          linkText: 'Sign in',
                          fun: () {
                            Navigator.pop(context);
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
