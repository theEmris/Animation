import 'package:flutter/material.dart';

class TweenAnimations extends StatefulWidget {
  const TweenAnimations({Key? key}) : super(key: key);

  @override
  _TweenAnimationsState createState() => _TweenAnimationsState();
}

class _TweenAnimationsState extends State<TweenAnimations>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;
  Animation? _animation2;
  Animation? _animation3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
        lowerBound: 0,
        upperBound: 5,
        duration: Duration(seconds: 4),
        vsync: this);

    _animationController!.addListener(() {
      setState(() {
        debugPrint(_animationController.toString());
      });
    });
    _animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController!.reverse();
      }
    });

    _animation =
        Tween<double>(begin: 1, end: 2).animate(_animationController!);

    _animation2 = ColorTween(begin: Colors.red, end: Colors.green)
        .animate(_animationController!);

    _animation3 = AlignmentTween(begin: Alignment(-1, 1), end: Alignment(0, 0))
        .animate(_animationController!);

    _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("this is tweenAnimations page"),
          Container(
            alignment: _animation3!.value,
            height: _animation!.value * 2,
            color: _animation2!.value,
            child: CircularProgressIndicator.adaptive(),
          ),

          ScaleTransition(scale:_animation!,
          child: Container(
            height: 40,
            color: Colors.black,
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
