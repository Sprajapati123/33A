import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FireStoreExample extends StatefulWidget {
  const FireStoreExample({super.key});
  static const String routeName = "/firestore";

  @override
  State<FireStoreExample> createState() => _FireStoreExampleState();
}

class _FireStoreExampleState extends State<FireStoreExample> {
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final emailController = TextEditingController();

  final firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("first name"),
          TextFormField(
              controller: fnameController),
          Text("last name"),
          TextFormField(controller: lnameController),
          Text("email"),
          TextFormField(controller: emailController),

          ElevatedButton(onPressed: () async{

            // FirebaseDatabase.instance.ref().child("").set(value);
            var data = {
              "firstname": fnameController.text,
              "lastname": lnameController.text,
              "email": emailController.text,
            };
            firestore.collection('users').doc().set(data);
            // firestore.collection('users').doc("1").set(data);
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
