import 'package:get_it/get_it.dart';
import 'package:joali_booking_app/features/auth/services/auth_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory<AuthService>(() => AuthService());
}
