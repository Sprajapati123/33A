import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = "/login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Screen"),
      ),
      body: Column(
        children: [
          TextFormField(
            validator: (String? value) {
              if (value == "") {
                return "Enter text";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _emailController,
          ),
          ElevatedButton(
              onPressed: () {
                print(_emailController.text);
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
