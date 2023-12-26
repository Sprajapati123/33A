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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///List<String> data = ["a","b","c"]
            /// for (i =0 ;i<data.length;i++){
            /// print(data[i]);
            /// }
            ///
            /// for(var a in data){
            /// print(a)
            /// }
            ///
            StreamBuilder(
              stream: firestore.collection('users').snapshots(),
              builder: (context, snapshot) {
                return ListView(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  children: snapshot.data!.docs
                      .map((DocumentSnapshot e) => ListTile(
                            title: Text(e['email']),
                            subtitle: Text(e['firstname']),
                    trailing: IconButton(icon: Icon(Icons.delete),onPressed: (){
                      firestore.collection('users').doc(e.id).delete();
                    }),
                          ))
                      .toList(),
                );
              },
            ),
            Text("first name"),
            TextFormField(controller: fnameController),
            Text("last name"),
            TextFormField(controller: lnameController),
            Text("email"),



            TextFormField(controller: emailController),
            ElevatedButton(
                onPressed: () async {
                  // FirebaseDatabase.instance.ref().child("").set(value);
                  var data = {
                    "firstname": fnameController.text,
                    "lastname": lnameController.text,
                    "email": emailController.text,
                  };
                  firestore.collection('users').doc().set(data);
                  // firestore.collection('users').doc("1").set(data);
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
