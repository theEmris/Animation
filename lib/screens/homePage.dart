import 'package:animation1/screens/secodPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: "first",
          child: Container(
            child: SizedBox(
              height: 200,
              child: InkWell(
                child: Image.network("https://docs.flutter.dev/assets/images/dash/Dash.png"),
                onTap: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context)=> SecodPage())
                  );
                },
              ),
            ),
          )),
    );
  }
}
