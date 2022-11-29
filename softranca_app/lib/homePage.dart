import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _softranca = !_softranca;
                      _softrancaRef.set(_softranca);
                    });
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 5),
                        content: _softranca
                            ? const Text(
                                'A tranca foi ativada!',
                              )
                            : const Text(
                                'A tranca foi desativada!',
                              ),
                      ),
                    );
                  },
                  icon: _softranca
                      ? const Icon(Icons.lock)
                      : const Icon(Icons.lock_open_rounded),
                  iconSize: 200,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
