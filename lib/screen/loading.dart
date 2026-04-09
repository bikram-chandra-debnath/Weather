import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/common/custom_background.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            CustomBackground(),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(child: Lottie.asset("assets/animation/loading.json") )),
            
          ],
        )
      ),
    );
  }
}
