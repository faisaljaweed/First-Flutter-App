import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyBulb();
  }
}

class MyBulb extends StatefulWidget {
  const MyBulb({super.key});

  @override
  State<MyBulb> createState() => _MyBulbState();
}

class _MyBulbState extends State<MyBulb> {
  bool isTurnOn = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Lets Glow'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                isTurnOn ? Icons.lightbulb : Icons.lightbulb_outline,
                size: 200,
                color: isTurnOn ? Colors.yellow : Colors.black,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isTurnOn = !isTurnOn;
                  });
                },
                child: Text(!isTurnOn ? "Turn on" : "Turn off"),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
