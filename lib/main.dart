import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Pilihan'),
        actions: [
          Icon(Icons.menu),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ],
      ),
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'img/Frame1.png',
                ),
                ListTile(
                  title: const Text('Laptop 68b4f3'),
                  subtitle: Text(
                    'Game, Editing, Music',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail1()),
                            );
                          },
                          child: const Text('See More'))
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset('img/Frame2.png'),
                ListTile(
                  title: const Text('Book'),
                  subtitle: Text(
                    'Education',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail2()),
                            );
                          },
                          child: const Text('See More'))
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset('img/Frame3.png'),
                ListTile(
                  title: const Text('Gadget'),
                  subtitle: Text(
                    'Editing, Music, Social Media',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail3()),
                            );
                          },
                          child: const Text('See More'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Detail1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: "Laptop 68b4f3",
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/Frame1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama1(),
          new Keterangan1(),
        ],
      ),
    );
  }
}

class Detail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: "Book",
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/Frame2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama2(),
          new Keterangan(),
        ],
      ),
    );
  }
}

class Detail3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: "Gadget",
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/Frame3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama3(),
          new Keterangan(),
        ],
      ),
    );
  }
}

class BagianNama1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Laptop 68b4f3",
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "Game, Editing, Music",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BagianNama2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Book",
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "Education",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BagianNama3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Gadget",
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "Editing, Music, Social Media",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}

class Keterangan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "Seperti laptop Acer Aspire E yang sudah memiliki layar display selebar 15,6 inci akan memberikan display secara menyeluruh. Selain display yang lebar, laptop Acer Aspire yang satu ini sudah dilengkapi dengan RAM sebesar 4GB dan 500GB storage.",
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}






// class MyHomePage extends StatefulWidget { 
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
