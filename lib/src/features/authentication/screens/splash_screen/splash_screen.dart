import 'package:flutter/material.dart';
import 'package:part3_tea_app_3page/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text_string.dart';
// import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  bool animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  // static SplashScreen get find => Get.find();

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() { animate = true; });
    await Future.delayed(const Duration(milliseconds: 5000));
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> OnBoardingScreen()));
    // Get.to(const WelcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: animate ? 1 : 0,
                child: const Image(image: AssetImage(tSplashTopIcon)),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 90,
              left: animate ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: animate ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 23,color: Colors.black),
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 23,color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: animate ? 120 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: animate ? 1 : 0,
                child: const Image(
                  height: 460,
                  width: 400,
                  image: AssetImage(tSplashImage)),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: animate ? 60 : 0,
              right: tDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: animate ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}