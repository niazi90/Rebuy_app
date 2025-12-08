import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy/controller/auth_controller/login_controller/login_controller.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "ReBuy",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Login with one of the following options",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/Google.png', width: 20, height: 50),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/Twitter.png', width: 20, height: 50),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/Apple.png', width: 20, height: 50),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Expanded(child: Divider(thickness: 2)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or"),
                    ),
                    Expanded(child: Divider(thickness: 2)),
                  ],
                ),
                const SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(380, 50),
                      backgroundColor: const Color.fromARGB(191, 244, 29, 29),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Get.offNamed('/home');
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offNamed('/signup');
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 202, 79, 70),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Fingerprint login button
                Obx(() {
                  if (controller.isAuthenticating.value) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return Center(
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.fingerprint, size: 28),
                        label: const Text(
                          "Login with Fingerprint",
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(250, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () async {
                          bool success = await controller.authenticate();
                          if (success) {
                            Get.snackbar("Success", "Login Successful");
                            Get.offNamed('/home');
                          } else {
                            Get.snackbar("Error", "Authentication Failed");
                          }
                        },
                      ),
                    );
                  }
                }),
                const SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
