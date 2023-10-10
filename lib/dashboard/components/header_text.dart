import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  String? value;
  String? label;
  HeaderText({super.key,this.value,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      ///
      /// if(label == null){
      /// Text("label")
      /// }else{
      /// Text("n/a")
      /// }
      ///
      children: [Text(value ?? "n/a"), Text(label ?? "n/a")],
    );
  }
}
