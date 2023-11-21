import 'package:batch_33a/dashboard/components/header_text.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    width: 100,
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeaderText(
                              value: "31",
                              label: "Posts",
                            ),
                            HeaderText(
                              value: "12k",
                              label: "Followers",
                            ),
                            HeaderText(
                              value: "10k",
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: OutlinedButton(
                                  onPressed: null, child: Text("Message")),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: OutlinedButton(
                                  onPressed: null,
                                  child: Icon(Icons.person_add_alt_1)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: OutlinedButton(
                                  onPressed: null,
                                  child: Icon(Icons.arrow_drop_down)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Softwarica college of IT and Ecommerce",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Text(
                    "Private",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    "Institution",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const Text(
                    "Bio .............................",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),

            ///List<int> a = [1,2,3]
            ///List<int> b = [3,4,5]
            ///List<int> c = [...a,...b]
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    20,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                          right: 10.0, left: index == 0 ? 10 : 0),
                      child: Column(
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("assets/images/test.jpeg"),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Vacations")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
