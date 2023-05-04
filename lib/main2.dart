import 'package:flutter/material.dart';
import 'package:flutterhackathon/utils/logger_util.dart';
import 'package:flutterhackathon/utils/image_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hackathon',
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
      home: const MyHomePage(title: 'Flutter Hackathon'),
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

  void test() {}

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter *= 10;
      Log.d("_counter add.");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'hello world.',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 208, 255),
                fontSize: 32.0,
              ),
            ),
            Text(
              '$_counter',
            ),
            TextButton(
                onPressed: () => {Log.d("TextButton onPressed")},
                child: Text("click me")),
            ElevatedButton(
              onPressed: () => {Log.d("ElevatedButton onPressed")},
              child: Text("click me"),
            ),
            // Image.asset(ImageUtil.wrapAssets("home.png")),
            Image.asset(
              ImageUtil.wrapAssets("home.png"),
              width: 50,
            ),
            Image(
              image: NetworkImage(
                  "https://pub.flutter-io.cn/static/hash-emcmnf54/img/pub-dev-logo-2x.png"),
              width: 100.0,
            ),
            TextField(

            ),
            LinearProgressIndicator(
              value: .5,

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
