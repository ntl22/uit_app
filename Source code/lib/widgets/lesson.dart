import 'package:flutter/material.dart';
import 'package:uit_app/widgets/dialog.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.45,
                  child: Image.asset('image/fish.jpg', fit: BoxFit.fitWidth),
                ),
              ),
              Positioned(
                top: screenSize.height * 0.5,
                left: (screenSize.width - 320) / 2,
                child: Container(
                  width: 320,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(240, 27, 123, 192)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: screenSize.height * 0.04,
                        left: ((screenSize.width - 320) / 2 * 0.4),
                        child: Text("Do you know that?",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                                fontSize: 20)),
                      ),
                      Positioned(
                        top: screenSize.height * 0.15,
                        left: ((screenSize.width - 320) / 2 * 0.4),
                        child: Text(
                            "Until the year of 2050,\nthe ocean will store more trash\nthan fish.",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                                fontSize: 15)),
                      ),
                      Positioned(
                        top: screenSize.height * 0.02,
                        left: ((screenSize.width - 320) * 2.2),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Image.asset('image/1.png',
                              fit: BoxFit.fitWidth),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                    color: Color.fromARGB(255, 255, 201, 66)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 4,
                        left: 5,
                        child: Row(
                          children: [
                            IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context)),
                            Text("Back", style: TextStyle(fontFamily: 'Inter', fontSize: 15, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Center(child: Text("News", style: TextStyle(fontFamily: 'Lato', fontSize: 20, fontWeight: FontWeight.bold),))
                    ],
                  )
                ),
              ),
              Positioned(
                top: screenSize.height * 0.9,
                left: screenSize.width * 0.9,
                child: IconButton(icon: Icon(Icons.arrow_forward_ios_sharp), 
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EndOfNewsDialogue()))
              ))
            ],
          ),
        ),
      ),
    );
  }
}
