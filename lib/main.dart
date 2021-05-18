import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia/tabbar.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBars(),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 80),
        child: Builder(
            builder: (context) => FabCircularMenu(

                    // Cannot be `Alignment.center`
                    alignment: Alignment.bottomRight,
                    ringColor: Colors.white.withAlpha(25),
                    ringDiameter: 500.0,
                    ringWidth: 100.0,
                    fabSize: 64.0,
                    fabElevation: 8.0,
                    fabIconBorder: CircleBorder(),
                    // Also can use specific color based on wether
                    // the menu is open or not:
                    // fabOpenColor: Colors.white
                    // fabCloseColor: Colors.white
                    // These properties take precedence over fabColor
                    fabColor: HexColor('#0695DE'),
                    fabOpenIcon: Icon(Icons.add, color: Colors.white),
                    fabCloseIcon: Icon(Icons.close, color: Colors.white),
                    fabMargin: const EdgeInsets.all(16.0),
                    animationDuration: const Duration(milliseconds: 800),
                    animationCurve: Curves.easeInOutCirc,
                    onDisplayChange: (isOpen) {
                      print("The menu is ${isOpen ? "open" : "closed"}");
                    },
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.home),
                          onPressed: () {
                            print('Home');
                          }),
                      IconButton(
                          icon: Icon(Icons.favorite),
                          onPressed: () {
                            print('Favorite');
                          })
                    ])),
      ),
    );
  }
}
