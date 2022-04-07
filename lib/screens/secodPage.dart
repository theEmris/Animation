import 'package:flutter/material.dart';

class SecodPage extends StatefulWidget {
  const SecodPage({Key? key}) : super(key: key);

  @override
  _SecodPageState createState() => _SecodPageState();
}

class _SecodPageState extends State<SecodPage> with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _animationController!.addStatusListener((status) {
      print("STATUS:$status");
      if (status == AnimationStatus.completed) {
        _animationController!.reverse();
      }
      ;
    });
    _animationController!.addListener(() {
      setState(() {
        debugPrint(_animationController!.value.toString());
      });
    });
    _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("is happening: ${_animationController!.value.toInt()}"),
          Hero(
              tag: "first",
              child: SizedBox(
                height: 200,
                child: Image.network(
                    "https://docs.flutter.dev/assets/images/dash/Dash.png"),
              )),
          // Container(
          //   height:200 * _animationController!.value,
          //   color: Colors.red.withOpacity(_animationController!.value),
          // )
          // ,
         
         
          AnimatedScale(
           scale: 1,
           duration:Duration(seconds: 1),
           curve: Curves.bounceInOut,
           child: Container(
             color: Colors.blue,
             height: 100,
             width: 100,
           ),
           
           ),
         
         
         
          AnimatedContainer(duration: Duration(seconds: 2),
          
            height: 200,
            width: 200,
            color: Colors.yellow,
            curve: Curves.bounceOut,
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),

            

          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController!.dispose();
    super.dispose();
  }
}
