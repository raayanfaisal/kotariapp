import 'package:flutter/material.dart';
import 'package:joali_booking_app/common/enums/view_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.idle;
  bool _visibility = false;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  bool get visibility => _visibility;

  void setVisibility() {
    _visibility = !_visibility;
    notifyListeners();
  }
}
