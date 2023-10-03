import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.red)),
        home: TestScreen());
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [
            Icon(Icons.share),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 20),
              child: Icon(Icons.favorite),
            )
          ],
          centerTitle: true,
          leading: Icon(Icons.menu),
          title: Text(
            "My App",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
            ListTile(
              trailing: Icon(Icons.check_circle),
              title: Text("Ram shrestha"),
                subtitle: Text("Hello, Ram Shrestha"),
                leading: CircleAvatar(

              backgroundImage: AssetImage("assets/images/test.jpeg"),
            )),
            Image.asset('assets/images/test.jpeg'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                children: [
                  Center(
                      child: Text("Flutter",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ],
              ),
            ),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
          ],
        ),
      ),
    );
  }
}
