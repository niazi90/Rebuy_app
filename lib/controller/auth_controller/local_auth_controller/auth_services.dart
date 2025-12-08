import 'package:local_auth/local_auth.dart';

class AuthService {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> authenticateUser() async {
    try {
      bool isAvailable = await auth.canCheckBiometrics;

      if (!isAvailable) return false;

      bool didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to continue',
        biometricOnly: true,
      );

      return didAuthenticate;
    } catch (e) {
      // ignore: avoid_print
      print("Error: $e");
      return false;
    }
  }
}
