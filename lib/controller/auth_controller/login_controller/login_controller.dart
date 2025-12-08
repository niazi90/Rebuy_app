import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class LoginController extends GetxController {
  final LocalAuthentication auth = LocalAuthentication();
  var isAuthenticating = false.obs;

  Future<bool> authenticate() async {
    try {
      isAuthenticating(true);

      bool isAvailable = await auth.canCheckBiometrics;
      if (!isAvailable) {
        isAuthenticating(false);
        return false;
      }

      bool authenticated = await auth.authenticate(
        localizedReason: 'Scan your fingerprint to login',
      );

      isAuthenticating(false);
      return authenticated;
    } catch (e) {
      isAuthenticating(false);
      print("Auth Error: $e");
      return false;
    }
  }

  // Removed automatic authentication in onInit
  @override
  void onInit() {
    super.onInit();
  }
}
