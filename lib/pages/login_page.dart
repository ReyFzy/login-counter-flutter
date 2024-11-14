import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/flutter.png'),
              Text(
                "Flutter",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextField(
            controller: loginController.usernameController,
            decoration: const InputDecoration(
                labelText: "Username", border: OutlineInputBorder()),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: loginController.passwordController,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: "Password", border: OutlineInputBorder()),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                loginController.dataLogin(
                    loginController.usernameController.text,
                    loginController.passwordController.text);
              },
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              )),
          const Spacer(),
          const Text(
            "Don't have account? Register here",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
