import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() {
    setState(() {
      this._counter++;
    });
  }

  void _decrement() {
    setState(() {
      this._counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page Counter",
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(child: Text("Counter : $_counter")),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () => _decrement(),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => _increment(),
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
