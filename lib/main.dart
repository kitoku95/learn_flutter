import 'package:flutter/material.dart';
import 'package:learn_flutter/component/text_block_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  var list = [
    {
      "ask": "Are you ok?",
      "answer" : "May be ok"
    },
    {
      "ask" : "What are your colors?",
      "answer" : ["black", "green", "blue"]
    }
  ];

  @override
  Widget build(BuildContext context) {

    List<Widget> temp = [];
    for(int i = 0; i < list.length; i++){
      temp.add(TextBlockWidget(isAsk: true, text: list[i]["ask"],));      
      temp.add(TextBlockWidget(isAsk: false, text: list[i]["answer"].toString().replaceAll("[", "").replaceAll("]", ""),));
    }
    
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Column(
              children: temp,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
