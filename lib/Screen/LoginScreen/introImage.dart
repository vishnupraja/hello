import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  // const IntroScreen({Key key}) : super(key: true);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        backgroundImage: "assets/images/order.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundImage: "assets/images/searchItems.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundImage: "assets/images/yougotIt.png",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      showSkipBtn: false,
      showNextBtn: false,
      slides: this.slides,
      showPrevBtn: false,
      showDoneBtn: false,
    );
  }
}


