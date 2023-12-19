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
  final formKey = GlobalKey<FormState>();
  final database = FirebaseDatabase.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration form"),),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("first name"),
            TextFormField(
              validator: (value){
                if(value == ""){
                  return "enter text";
                }
                return null;
              },
                controller: fnameController),
            Text("last name"),
            TextFormField(controller: lnameController),
            Text("email"),
            TextFormField(controller: emailController),

            ElevatedButton(onPressed: () async{
              if(formKey.currentState!.validate()){
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
              }

            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
