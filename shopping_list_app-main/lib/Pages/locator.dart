import 'package:Showigu_Firebase/Pages/firebase_auth_implemantaion/auth_service.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<AuthService>(() => AuthService());
}
