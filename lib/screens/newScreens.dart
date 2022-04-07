import 'package:flutter/material.dart';

class NewChickerScreen extends StatelessWidget {
  const NewChickerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,          
          children: [
          Text("birnarsala"),
          Text("birnarsala"),
          Text("birnarsala"),
          Text("birnarsala"),
          Text("birnarsala"),

        ],),
      ),
      
    );
  }
}