import 'package:e_learning/Screen/Auth/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
class IntroSliderFirst  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntroState();
  }
}

class IntroState extends State<IntroSliderFirst> {
  List<Slide> listSlides = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroSlider(
      slides: listSlides,
      onDonePress: onPressedDone,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listSlides.add(Slide(
      pathImage: "assets/images/splashlogo.png",
      description: "Ligue 1 Conforama",
      backgroundColor: Colors.pinkAccent,
    ));
    listSlides.add(Slide(
      pathImage: "assets/images/splashlogo.png",
      description: "Ligue 1 Conforama",
      backgroundColor: Colors.deepOrangeAccent,
    ));
    listSlides.add(Slide(

      pathImage: "assets/images/splashlogo.png",
      description: "Ligue 1 Conforama",
      // backgroundColor: Colors.redAccent,

    ));
    // listSlides.add(Slide(
    //   backgroundImage: "assets/images/order.png",
    //   backgroundColor: Colors.blueAccent,
    // ));
    // listSlides.add(Slide(
    // title: "Ligue 1",
    // description: "Ligue 1 Conforama",
    // pathImage: "images/ligue_one.png",
    // backgroundColor: Colors.amberAccent,
    // ));
  }

  onPressedDone() {

    // onTap: (){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePageLogin()));
    // },

    // onTap : () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePageLogin(title: '',)));
    // Single tapped.
    // }
  }

}
