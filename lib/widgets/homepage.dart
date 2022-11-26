import 'package:flutter/material.dart';
import './lesson.dart';
import './game.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'UIT Hackathon',
      theme: ThemeData(fontFamily: 'Lato'),
      debugShowCheckedModeBanner: false,
      home: const HomePage(title: 'logo'),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container( //banner
                width: screenSize.width,
                height: screenSize.height * .35,
                decoration: BoxDecoration( //
                  color: Color.fromRGBO(27, 124, 192, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: screenSize.width * .1,
                        left: screenSize.width * .05,
                        child: Text(
                          widget.title,
                          style: TextStyle(fontSize: 30),
                        )),
                    Positioned(
                        top: screenSize.height * .28,
                        left: screenSize.width * .7,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LessonPage())),
                          child: Container(
                            width: screenSize.width * 0.2,
                            height: screenSize.height * 0.04,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: Color.fromRGBO(255, 178, 0, 1)),
                          ),
                        ))
                  ],
                ),
              )),
          Positioned(
              top: screenSize.height * .37,
              left: screenSize.width * .05,
              child: const Text(
                "Lessons",

                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'Merriweather', fontSize: 25),
              )),
          Positioned(
              top: screenSize.height * .43,
              left: 0,
              child: SizedBox(
                width: screenSize.width,
                height: screenSize.height * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(9, (index) =>
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: LessonListTile(index: index + 1),
                    ),
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}

class LessonListTile extends StatelessWidget {
  final int index;

  const LessonListTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => GamePage())),
      child: Container(
          width: screenSize.width * 0.3,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            color: Color.fromRGBO(255, 203, 66 ,1),
          ),
          child: Center(child: Text('Lessons', textAlign: TextAlign.left, style: TextStyle(color: Color.fromRGBO(27, 124, 192 ,0.8) , fontSize: 25)))
      ),
    );
  }
}
