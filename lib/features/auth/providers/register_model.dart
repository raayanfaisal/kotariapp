import 'package:joali_booking_app/common/enums/view_state.dart';
import 'package:joali_booking_app/features/auth/providers/base_model.dart';
import 'package:joali_booking_app/features/auth/services/auth_service.dart';
import 'package:joali_booking_app/service_locator.dart';

class RegisterModel extends BaseModel {
  final AuthService _authService = locator<AuthService>();

  Future registerWithEmailAndPassword(
    String fullName,
    String email,
    String password,
  ) async {
    setState(ViewState.busy);
    _authService.registerWithEmailAndPassword(fullName, email, password);
    setState(ViewState.idle);
  }
}
