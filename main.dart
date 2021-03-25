import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Victor´s app',
      theme: new ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF303030),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Sysent'),
          ),
        body:
          new SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(0.0),
            child:
              new Container(
                child:
                  new Stack(
                    children: <Widget>[
                      new Image.network(
                        'https://media.newyorker.com/photos/5fbd896544cdcf2cd7ee0945/master/w_2560%2Cc_limit/201207_r37494.jpg',
                        fit:BoxFit.cover,
                        width: 400.0, 
                        height: 400.0,
                        ),
    
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      )
                    ]
    
                  ),
    
                padding: const EdgeInsets.all(0.0),
                alignment: Alignment.center,
              ),
    
          ),
    
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.announcement),
          onPressed: fabPressed),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.assignment_turned_in),
              title: new Text('To do'),
            ),
    
            new BottomNavigationBarItem(
              icon: const Icon(Icons.description),
              title: new Text('Files'),
            ),
    
            new BottomNavigationBarItem(
              icon: const Icon(Icons.euro_symbol),
              title: new Text('Finances'),
            )
          ]
    
        ),
      );
    }
    void fabPressed() {}
    
}
