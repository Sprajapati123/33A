import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});
  static const String routeName = "/form";

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final database = FirebaseDatabase.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration form"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("first name"),
          TextFormField(controller: fnameController),
          Text("last name"),
          TextFormField(controller: lnameController),
          Text("email"),
          TextFormField(controller: emailController),

          ElevatedButton(onPressed: () async{
            var data = {
              "firstname": fnameController.text,
              "lastname": lnameController.text,
              "email": emailController.text,
            };
            await database.ref().child("contact").push().set(data).then((value) {
              print("Success");
            }).onError((error, stackTrace) {
              print(error.toString());
            });
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
