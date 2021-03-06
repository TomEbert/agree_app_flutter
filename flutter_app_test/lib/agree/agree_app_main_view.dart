import 'package:flutter/material.dart';
import 'package:flutter_app_test/models/are_pattern.dart';
import 'package:flutter_app_test/agree/detail/are_pattern_detail_view.dart';
import 'package:flutter_app_test/agree/team/agree_app_team_view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _scrollController = new ScrollController();

  final items = AREPattern.getPatterns();
  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: new ListView.builder(
          itemCount: items.length,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return new ListTile(
              leading: new CircleAvatar(
                backgroundImage: items[index].image,
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.white,
              ),
              title: new Text(items[index].patternName),
              onTap: () {
                _openDetail(items[index]);
                key.currentState.showSnackBar(
                    new SnackBar(
                      content: new Text(items[index].patternName +" clicked"),
                      duration: Duration(seconds: 1),
                    )
                );
              },
            );
          },
        ),
      ),

//        new Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug paint" (press "p" in the console where you ran
//          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
//          // window in IntelliJ) to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//
//            new Text(
//              'Hallo Tobi hier könnte deine Werbung stehen.',
//            ),
//
//          ],
//        ),
//      ),

      drawer: new Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.

        child: new ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[

            new DrawerHeader(
              child: new Text(
                'Agree\n\nAGile REquirements Engineering',
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 255, 255, 255)
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blue,
              ),
            ),

            new ListTile(
              title: new Text('Agile RE patterns'),
              onTap: () {
                // Update the state of the app
                // ...
                key.currentState.showSnackBar(new SnackBar(
                  content: new Text("Item 1 clicked"),
                ));
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            new ListTile(
              title: new Text('Team'),
              onTap: () {
                // Update the state of the app
                // ...
                key.currentState.showSnackBar(new SnackBar(
                  content: new Text("Item 2 clicked"),
                ));
                // Then close the drawer
                Navigator.pop(context);
                _openTeam();
              },
            ),
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(0.0, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
          key.currentState.showSnackBar(new SnackBar(
            content: new Text("floatingActionButton clicked"),
          ));
        },
        tooltip: 'Increment',
        child: new Icon(Icons.arrow_upward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _openTeam(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return new AgreeAppTeamView();
        },
      ),
    );
  }

  _openDetail(AREPattern pattern) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return new AREPatternDetailView(arePattern: pattern);
        },
      ),
    );
  }
}