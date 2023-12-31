import 'dart:convert';

import 'package:batch_33a/registraion/registration_screen.dart';
import 'package:batch_33a/widgets/common_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  bool visibility = true;
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              const Text("Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              const SizedBox(
                height: 10,
              ),
              CommonTextField(
                controller: _emailController,
                prefixIcon: const Icon(Icons.mail),
                hintText: "Enter email",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              const SizedBox(
                height: 10,
              ),
              CommonTextField(
                  controller: _passwordController,
                  hintText: "Enter password",
                  suffixIcon: IconButton(
                    icon: visibility
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                  ),
                  prefixIcon: Icon(Icons.key)),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 500,
                child: ElevatedButton(
                    onPressed: () async {}, child: Text("Login")),
              ),
              Container(
                width: 500,
                child: isLoading == true
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            isLoading = true;
                          });
                          try {
                            final user =
                                await auth.createUserWithEmailAndPassword(
                                    email: _emailController.text,
                                    password: _passwordController.text);

                            if (user.user != null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("Register succesfull")));
                              setState(() {
                                isLoading = false;
                              });
                            }
                          } on Exception catch (e) {
                            setState(() {
                              isLoading = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(e.toString())));
                            // TODO
                          }
                        },
                        child: Text("Register")),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RegistrationScreen.routeName);
                      },
                      child: Text("Register now"))),
            ],
          ),
        ),
      ),
    );
  }
}
