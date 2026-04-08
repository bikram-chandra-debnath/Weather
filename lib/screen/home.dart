
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/common/custom_background.dart';
import 'package:weather/screen/widgets/body_section.dart';
import 'package:weather/screen/widgets/header_section.dart';
import 'package:weather/screen/widgets/lower_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(20, 1.2 * kToolbarHeight, 20, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              CustomBackground(),
              // Ui
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // location and gretings
                      HeaderSection(),
                      // Image, temp, day and time
                      BodySection(),
                      const SizedBox(height: 20),
                  
                      // temp and sunrise-sunset time
                      LowerSection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



