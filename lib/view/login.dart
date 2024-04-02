import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_eats/view/home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  void loginUser(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeView()));
  }

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: Get.size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                    "https://1000logos.net/wp-content/uploads/2021/04/Uber-Eats-logo.png"),
                TextField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    loginUser(context);
                  },
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  child: const Text(style: TextStyle(fontSize: 20), "Login"),
                ),
                TextButton(onPressed: () {}, child: const Text("Sign UP")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
