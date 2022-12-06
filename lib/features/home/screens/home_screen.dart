import 'package:flutter/material.dart';
import 'package:joali_booking_app/features/cards/guest_house_list.dart';
import 'package:joali_booking_app/features/cards/guest_houses.dart';
import 'package:joali_booking_app/features/hotel_search/hotel_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 90.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Find and book with ease',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: HotelSearch(),
            ),
            Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 100.0, vertical: 5.0)),
            Container(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                children: [
                  Text(
                    'Popular Places',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Find and book with ease',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(child: HotelList()),
            ),
          ],
        ),
      ),
    );
  }
}
