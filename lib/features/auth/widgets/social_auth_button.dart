import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialAuthButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback fun;
  final Color color;

  const SocialAuthButton({
    Key? key,
    required this.fun,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: OutlinedButton(
        onPressed: fun,
        child: FaIcon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
