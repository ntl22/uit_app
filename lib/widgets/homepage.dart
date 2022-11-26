import 'package:flutter/material.dart';
import './lesson.dart';
import './game.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UIT Hackathon',
      // theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: const HomePage(title: 'UIT'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        // body: Column(
        //   children: <Widget>[
        //     ClipPath(
        //       clipper: TitleCustomClipper(),
        //       child: Container(
        //         height: screenSize.height * 0.4,
        //         decoration: BoxDecoration(
        //           gradient: LinearGradient(
        //               begin: Alignment.bottomLeft,
        //               end: Alignment.topRight,
        //               colors: [Colors.red, Colors.black]),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        appBar: AppBar(
          title: const Text('FC Con Meo'),
        ),
        body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => 
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => const LessonPage()
                  )
                ), 
                child: const Text("Bài học cuộc sống")
              ),
              ElevatedButton(
                onPressed: () => 
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => const GamePage()
                  )
                ),
                child: const Text("Game")
              )
          ],
        )
      )
    );
  }
}

// class TitleCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => this != oldClipper;
// }
