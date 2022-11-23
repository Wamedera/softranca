import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/utils/stream_subscriber_mixin.dart';
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

  late final DatabaseReference _softrancaRef;
  late StreamSubscription<DatabaseEvent> _softrancaSubscription;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    _softrancaRef = FirebaseDatabase.instance.ref('/softranca/isAtiva');
    try {
      final softrancaSnapshot = await _softrancaRef.get();
      _softranca = softrancaSnapshot.value as bool;
    } catch (err) {
      debugPrint(err.toString());
    }

    _softrancaSubscription =
        _softrancaRef.onValue.listen((DatabaseEvent event) {
      setState(() {
        _softranca = (event.snapshot.value ?? false) as bool;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Softranca"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          ListTile(
            leading: CupertinoSwitch(
              value: _softranca,
              onChanged: (value) {
                setState(() {
                  _softrancaRef.set(value);
                  _softranca = value;
                });
              },
            ),
            title: const Text("Softranca"),
          )
        ],
      ),
    );
  }
}
