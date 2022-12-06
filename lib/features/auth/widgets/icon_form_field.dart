import 'package:flutter/material.dart';

class IconFormField extends StatelessWidget {
  final IconData icon;
  final TextFormField textFormField;

  const IconFormField({
    Key? key,
    required this.icon,
    required this.textFormField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey),
        const SizedBox(width: 20.0),
        Flexible(child: textFormField),
      ],
    );
  }
}
