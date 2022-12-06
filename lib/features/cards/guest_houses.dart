import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GuestHouses extends StatefulWidget {
  const GuestHouses({super.key});

  @override
  State<GuestHouses> createState() => _GuestHousesState();
}

class _GuestHousesState extends State<GuestHouses> {
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple[200],
      ),
    );
  }
}