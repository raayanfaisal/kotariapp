import 'package:flutter/material.dart';

class HotelSearch extends StatefulWidget {
  const HotelSearch({super.key});

  @override
  State<HotelSearch> createState() => _HotelSearchState();
}

class _HotelSearchState extends State<HotelSearch> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0)),
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 238, 238, 238),
              labelText: 'Hulhumale Phase 2',
              prefixIcon: Align(
                heightFactor: 1.0,
                widthFactor: 1.0,
                child: Icon(Icons.location_pin),
              )
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 238, 238, 238),
              labelText: 'Check In',
              prefixIcon: Align(
                heightFactor: 1.0,
                widthFactor: 1.0,
                child: Icon(Icons.calendar_month),
              )
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          TextFormField(
            onTap: (){
              // Below line stops keyboard from appearing
              FocusScope.of(context).requestFocus(new FocusNode());

              // Show Date Picker Here

            },
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 238, 238, 238),
              labelText: 'Check Out',
              prefixIcon: Align(
                heightFactor: 1.0,
                widthFactor: 1.0,
                child: Icon(Icons.calendar_month),
              )
            ),
          ),
        ],
      ),
    );
  }
}
