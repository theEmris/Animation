import 'package:flutter/material.dart';

class CurvedAnimationsPage extends StatefulWidget {
  const CurvedAnimationsPage({Key? key}) : super(key: key);

  @override
  _CurvedAnimationsPageState createState() => _CurvedAnimationsPageState();
}

class _CurvedAnimationsPageState extends State<CurvedAnimationsPage>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        lowerBound: 0,
        upperBound: 1,
        duration: Duration(seconds: 3),
        vsync: this);
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.bounceIn);
    _controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Curved Animations Page"),
            Container(
              height: _animation!.value * 100,
              color: Colors.amber,
            ),




            AnimatedContainer(
              duration:Duration(seconds: 2),
              curve: Curves.bounceOut,
              height: 100,
              width: 150,
              color: Color.fromARGB(255, 89, 93, 95),
            
            ),
            AnimatedScale(
              scale: 2,
              duration: Duration(seconds: 2),
              curve: Curves.easeInCirc,
              child: Container(
                height: 100,
                width: 200,
                color: Colors.blue,
              ),
              
               ),
          
          ],
        ),
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){setState(() {
        
      });},child: Icon(Icons.refresh),),
    );
  }
}
