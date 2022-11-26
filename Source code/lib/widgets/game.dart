import 'package:flutter/material.dart';
import 'package:uit_app/widgets/dialog.dart';

import 'color_game.dart';

class PlasticPage extends StatelessWidget {
  const PlasticPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('image/lesson_intro.png'),
          fit: BoxFit.fitWidth,
        )),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: screenSize.width,
                height: screenSize.height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: Color.fromRGBO(255, 178, 0, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: screenSize.height * .05,
                      left: screenSize.width * .03,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.arrow_back)),
                          Text("Back",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Inter'))
                        ],
                      ),
                    ),
                    Positioned(
                      top: screenSize.height * 0.11,
                      left: screenSize.width * 0.13,
                      child: const Text("Lesson\n01\nPlastic",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lato',
                              fontSize: 30)),
                    ),
                    Positioned(
                        top: screenSize.height * 0.07,
                        left: screenSize.width * 0.55,
                        child: Container(
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            'image/1.png',
                            fit: BoxFit.fill,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: screenSize.height * .35,
              child: Container(
                width: screenSize.width,
                height: screenSize.height * .7,
                child: Column(
                  children: [
                    SizedBox(
                        width: screenSize.width * .35,
                        height: screenSize.height * .07,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ColorGame())),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 178, 0, 1)),
                          child: Text("01", style: TextStyle(fontSize: 20)),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                        width: screenSize.width * .35,
                        height: screenSize.height * .07,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IsDevelopingDialogue())),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 178, 0, 1)),
                          child: Text("02", style: TextStyle(fontSize: 20)),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                        width: screenSize.width * .35,
                        height: screenSize.height * .07,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IsDevelopingDialogue())),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 178, 0, 1)),
                          child: Text("03", style: TextStyle(fontSize: 20)),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                        width: screenSize.width * .35,
                        height: screenSize.height * .07,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IsDevelopingDialogue())),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 178, 0, 1)),
                          child: Text("04", style: TextStyle(fontSize: 20)),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                        width: screenSize.width * .35,
                        height: screenSize.height * .07,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IsDevelopingDialogue())),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 178, 0, 1)),
                          child: Text("05", style: TextStyle(fontSize: 20)),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                        width: screenSize.width * .35,
                        height: screenSize.height * .07,
                      
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(255, 178, 0, 1)
                          ),
                          child: Center(
                            child: Text(
                              "GOAL",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
