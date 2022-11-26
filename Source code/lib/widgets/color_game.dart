import 'package:flutter/material.dart';

class ColorGame extends StatefulWidget {
  @override
  ColorGameState createState() => ColorGameState();
}

class ColorGameState extends State<ColorGame> {
  final Map<String, bool> score = {};
  final Map choices1 = {
    'image/bag-3.png': 'plastic',
    'image/leaf-fall-2.png': 'leaf',
    'image/plastic-bottle.png': 'plastic'
  };
  final Map choices2 = {
    'image/newspaper.png': 'paper',
    'image/rotten.png': 'fruit',
    'image/plastic.png': 'plastic'
  };
  final Map choices = {
    'image/bag-3.png': 'plastic',
    'image/leaf-fall-2.png': 'leaf',
    'image/plastic-bottle.png': 'plastic',
    'image/newspaper.png': 'paper',
    'image/rotten.png': 'fruit',
    'image/plastic.png': 'plastic'
  };
  int sc = 0;
  String im = 'image/square.png';
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   flexibleSpace: Container(
        //     decoration:
        //     BoxDecoration(
        //       image: DecorationImage(
        //         image: AssetImage('image/head.png'),
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),
        //   backgroundColor: Colors.transparent,
        // ),
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                score.clear();
                sc = 0;
              });
            }),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "image/315517350_507221938024749_5629722695500575322_n.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: choices1.keys.map((img) {
                    return Draggable<String>(
                      data: img,
                      child: Img(img: score[img] == true ? im : img),
                      feedback: Img(img: img),
                      childWhenDragging: Img(img: im),
                    );
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: choices2.keys.map((img) {
                    return Draggable<String>(
                      data: img,
                      child: Img(img: score[img] == true ? im : img),
                      feedback: Img(img: img),
                      childWhenDragging: Img(img: im),
                    );
                  }).toList(),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      DragTarget<String>(
                        builder: (BuildContext context, List<dynamic> accepted,
                            List<dynamic> rejected) {
                          return Container(
                              height: 167.0,
                              width: 150.0,
                              child: Column(
                                children: [
                                  Image.asset('image/2514330.png'),
                                  Text('Number of trashs: $sc'),
                                ],
                              ));
                        },
                        onWillAccept: (data) {
                          return choices[data] == 'plastic';
                        },
                        onAccept: (data) {
                          setState(() {
                            score[data] = true;
                            sc++;
                          });
                        },
                      )
                    ]),
              ],
            ),
          ),
        ));
  }
}

class Img extends StatelessWidget {
  Img({Key? key, required this.img}) : super(key: key);
  final String img;
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
          alignment: Alignment.center,
          height: 70,
          padding: EdgeInsets.all(1),
          child: Image.asset(img)),
    );
  }
}
