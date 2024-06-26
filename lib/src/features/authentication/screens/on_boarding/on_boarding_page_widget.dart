import 'package:flutter/material.dart';
import 'package:flutter_login/src/constants/size.dart';
import 'package:flutter_login/src/constants/text_string.dart';
import 'package:flutter_login/src/features/authentication/model/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(image: AssetImage(model.image) , height: model.height * 0.4,),
          Column(
            children: [
              Text(model.title , style: Theme.of(context).textTheme.headline3),
              Text(model.subTitle , textAlign: TextAlign.center),
            ],
          ),
          Text(model.counterText , style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 60,),
        ],
      ) ,
    );
  }
}
