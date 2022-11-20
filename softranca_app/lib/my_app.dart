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
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          _tranca
              ? const ListTile(
                  leading: Icon(
                    Icons.shield,
                    size: 40,
                  ),
                  title: Text("Tranca"),
                  subtitle: Text("status"),
                )
              : const ListTile(
                  leading: Icon(
                    Icons.shield_outlined,
                    size: 40,
                  ),
                  title: Text("Tranca"),
                  subtitle: Text("status"),
                ),
          ListTile(
            leading: CupertinoSwitch(
              value: _softranca,
              onChanged: (value) {
                setState(() {
                  _softranca = value;
                });
                print(_softranca);
              },
            ),
            title: const Text("Softranca"),
          )
        ],
      ),
    );
  }
}
