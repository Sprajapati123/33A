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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/login.jpg",
                height: 300,
                width: 300,
              ),
            ),
            const Text("Email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),

            TextFormField(
              validator: (String? value) {
                if (value == "") {
                  return "Enter text";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter email",

                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.mail,color: Colors.grey.shade500),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Colors.green, width: 1)),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _emailController,
            ),

            // ElevatedButton(
            //     onPressed: () {
            //       print(_emailController.text);
            //     },
            //     child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
