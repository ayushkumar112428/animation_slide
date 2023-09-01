import 'package:flutter/material.dart';

import '../../../../constants/size.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(model.image),
              height: size.height * 0.45,
            ),
            Column(
              children: [
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.black),
                ),
                Text(
                  model.subTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black),
                ),
              ],
            ),
            Text(
              model.counterText,
              style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 80.0,
            )
          ],
        ),
      ),
    );
  }
}