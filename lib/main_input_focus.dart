import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField focus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("TextField focus"),
      ),
      body: const Center(
        child: TextField(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // MethodChannel channel = SystemChannels.textInput;
          // channel.invokeMethod("TextInput.show");
          // channel.invokeMethod("TextInput.show2");


          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const TipRoute();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TipRoute extends StatelessWidget {
  const TipRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("tip"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: SizedBox(),
                autofocus: true,
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent),
              ),
              const Text("back"),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("back"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
