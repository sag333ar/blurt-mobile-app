import 'package:flutter/material.dart';

import 'package:blurt_mobile_app/services/service.dart'
    if (dart.library.io) 'package:blurt_mobile_app/services/mobile_service.dart'
    if (dart.library.html) 'package:blurt_mobile_app/services/web_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blurt Mobile App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Blurt Mobile App - Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text('Hello World from Blurt Mobile App'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          call();
        },
        child: const Icon(Icons.bolt),
      ),
    );
  }
}
