import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AgreeAppTeamView extends StatelessWidget {

  // Stored Properties
  final List<AssetImage> imgList = [
    AssetImage("assets/images/images_team_tobi.png"),
    AssetImage("assets/images/images_team_tom.png"),
    AssetImage("assets/images/images_team_oli.png"),
  ];

  // Initializer
  AgreeAppTeamView();

  CarouselSlider instance;

  nextSlider() {
    instance.nextPage(duration: new Duration(milliseconds: 300), curve: Curves.linear);
  }

  prevSlider() {
    instance.previousPage(duration: new Duration(milliseconds: 800), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Team"),
      ),
      body: new CarouselSlider(
          items: imgList.map((i) {
            return new Builder(
              builder: (BuildContext context) {
                return new Container(
                    width: MediaQuery.of(context).size.width,
                    margin: new EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: new BoxDecoration(
                        color: Color.fromARGB(0, 0, 0, 0)
                      ),
                      child: new Image(
                          image: i,
                      )
                );
                },
            );
          }).toList(),
          height: 400.0,
          autoPlay: true
      )

//      new Center(
//        child: new RaisedButton(
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          child: new Text('Go back!'),
//        ),
//      ),


    );
  }
}