import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // int _idx = 0;
  Color color = Colors.redAccent;
  int cnt01 = 0;
  int cnt02 = 0;
  String winner = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(height: 50,),
          const Text("메탈을 가르쳐주겠다!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          Container(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("Ronnie James Dio", style: TextStyle(fontSize: 25),),
              Text("Judas Priest", style: TextStyle(fontSize: 25),)
            ],
          ),
          Container(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("$cnt01 Point", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              Text("$cnt02 Point", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
            ],
          ),
          Container(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        cnt01 = cnt01 + 1;
                        if(cnt01 > 10) {
                          winner = "DIO Win!!!";
                        }
                      });
                    },
                    icon: const Icon(Icons.add), ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        cnt01 = cnt01 - 1;
                      });
                    },
                    icon: const Icon(Icons.remove), )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        cnt02 = cnt02 + 1;
                        if(cnt02 > 10) {
                          winner = "Metal God Win!!!";
                        }
                      });
                    },
                    icon: const Icon(Icons.add), ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        cnt02 = cnt02 - 1;
                      });
                    },
                    icon: const Icon(Icons.remove), )
                ],
              )
            ],
          ),
          Container(height: 40,),
          Text(winner, style: const TextStyle(fontSize: 35, color: Colors.red),)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
