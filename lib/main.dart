import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: const Text('Counter App',
              style: TextStyle(fontFamily: 'Dongle', fontSize: 45)),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Tap "-" to decrement',
                  style: TextStyle(
                      fontFamily: 'Dongle', fontSize: 35, color: Colors.white)),
              CounterWidget(),
              Text('Tap "+" to increment',
                  style: TextStyle(
                      fontFamily: 'Dongle', fontSize: 35, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        margin: const EdgeInsets.all(2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: _decrement,
                icon: const Icon(Icons.remove, color: Colors.black54)),
            Text('$_counter',
                style: const TextStyle(fontSize: 25, color: Colors.black54)),
            IconButton(
                onPressed: _increment,
                icon: const Icon(Icons.add, color: Colors.black54)),
          ],
        ),
      )
    ]);
  }
}
