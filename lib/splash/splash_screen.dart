import 'package:batch_33a/login/login_screen.dart';
import 'package:batch_33a/navigation/navigation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = "/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    navigate();
    super.initState();
  }

  void navigate() async {
    await Future.delayed(const Duration(seconds: 4), () {
      // if(loggedIn){
      //   navigate to dashboard
      // }else{
      //   navigate to login
      // }
      Navigator.pushReplacementNamed(context, NavigationScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/images/test.jpeg")),
            const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
