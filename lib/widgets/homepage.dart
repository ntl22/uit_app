import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:uit_app/widgets/game.dart';
import './lesson.dart';
import './dialog.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UIT Hackathon',
      theme: ThemeData(fontFamily: 'Lato'),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  void _navigateToHomeScreen() async {
    await Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomePage(title: 'logo')));
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(27, 124, 192, 1),
        ),
        child: Center(
          child: Image.asset(
            'image/splash.png',
            scale: 5,
          ),
        ),
      ),
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
              child: Container(
                width: screenSize.width,
                height: screenSize.height * .35,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(27, 124, 192, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: screenSize.height * .05,
                      left: screenSize.width * .05,
                      child: Image.asset(
                        'image/logo.png',
                        scale: 25,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        top: screenSize.height * .25,
                        left: screenSize.width * .1,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LessonPage())),
                          child: Container(
                            width: screenSize.width * 0.2,
                            height: screenSize.height * 0.04,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Color.fromRGBO(255, 178, 0, 1),
                                border:
                                    Border.all(width: 1, color: Colors.white)),
                            child: Center(
                              child: Text(
                                "More",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Lato',
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                        top: screenSize.height * .12,
                        left: screenSize.width * .1,
                        child: const Text(
                          "Save the\nEnvironment",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lato',
                              fontSize: 30),
                        )),
                    Positioned(
                      top: screenSize.height * .08,
                      left: screenSize.width * .55,
                      child: SizedBox(
                        height: 160,
                        child: Image.asset(
                          'image/big_logo.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: screenSize.height * .37,
              left: screenSize.width * .05,
              child: const Text(
                "Lessons",
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'Lato', fontSize: 25),
              )),
          Positioned(
              top: screenSize.height * .43,
              left: 0,
              child: SizedBox(
                width: screenSize.width,
                height: screenSize.height * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 10.0),
                      child: LessonListTile(
                          index: 1, percent: 0.4, name: 'Plastic', page: PlasticPage()),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child:
                          LessonListTile(index: 2, percent: 0, name: 'Saving'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 5.0),
                      child: LessonListTile(index: 3, percent: 0, name: 'Garbage'),
                    ),
                  ],
                ),
              )),
          Positioned(
            top: screenSize.height * .87 - 75,
            left: screenSize.width * .6,
            child: SizedBox(
              width: 150,
              height: 75,
              child: Image.asset(
                'image/homescreen_bottom.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: screenSize.height * .87,
            left: 0,
            child: SizedBox(
              width: screenSize.width,
              height: screenSize.height * (1 - .87),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(27, 124, 192, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    )),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class LessonListTile extends StatelessWidget {
  final int index;
  final double percent;
  final String name;
  final Widget page;

  const LessonListTile(
      {super.key,
      this.page = const IsDevelopingDialogue(),
      required this.index,
      required this.percent,
      required this.name});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => page)),
        child: Container(
          width: screenSize.width * .4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            color: Color.fromRGBO(255, 178, 0, 1),
          ),
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    "Lesson\n0$index\n$name",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  top: screenSize.height * .3 * .8,
                  left: screenSize.width * .4 * .75,
                  child: CircularPercentIndicator(
                      radius: 16.5,
                      progressColor: Colors.green,
                      backgroundColor: Color.fromARGB(145, 130, 33, 1),
                      animation: true,
                      animationDuration: 600,
                      center: Text("${(percent*100).toInt()}%", style: TextStyle(fontSize: 10),),
                      percent: percent))
            ],
          ),
        ));
  }
}
