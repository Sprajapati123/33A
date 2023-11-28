import 'package:flutter/material.dart';

import '../widgets/common_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  static const String routeName = "/registraion";
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          CommonTextField(
            controller: firstNameController,
            prefixIcon: const Icon(Icons.mail),
            hintText: "Enter firstName",
          ),
          CommonTextField(
            controller: lastNameController,
            prefixIcon: const Icon(Icons.mail),
            hintText: "Enter lastName",
          ),
        ],
      ),
    );
  }
}
