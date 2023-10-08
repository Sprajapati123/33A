import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "_softwarica_college",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/test.jpeg"),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [Text("31"), Text("posts")],
                          ),
                          Column(
                            children: [Text("12k"), Text("followers")],
                          ),
                          Column(
                            children: [Text("31"), Text("following")],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
