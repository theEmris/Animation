import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottteAnimationPAge extends StatefulWidget {
  const LottteAnimationPAge({ Key? key }) : super(key: key);

  @override
  _LottteAnimationPAgeState createState() => _LottteAnimationPAgeState();
}

class _LottteAnimationPAgeState extends State<LottteAnimationPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
          children: [
            Text("lottie animations page"),
            Lottie.network(
                'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
      
             ] )  );
  }
}