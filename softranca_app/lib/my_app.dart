import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Softranca'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _tranca = false;
  bool _softranca = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Softranca"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Tranca",
              style: TextStyle(fontSize: 20, height: 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Row(
                children: [
                  Text("Status:"),
                  Container(
                    color: Colors.green,
                    width: 300,
                    height: 50,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Softranca",
              style: TextStyle(fontSize: 20, height: 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Row(
                children: [
                  Text("Status:"),
                  CupertinoSwitch(
                    value: _softranca,
                    onChanged: (value) {
                      setState(() {
                        _softranca = value;
                      });
                    },
                  ),
                  Container(
                    color: Colors.green,
                    width: 200,
                    height: 50,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
