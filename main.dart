import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 60.0,
          horizontal: 80.0,
        ),
        color: const Color(0xFFFFFFFF),
        child: const Content(),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Title 
        Text(
          '6488177 Jedsada Meenoi',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // New line 
        SizedBox(height: 10.0),
        // Subtitle
        Text(
          'Startrack',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.0),
        Counter('6488033', 'PONWISED KITTITRONSUB'),
        Counter('6488042', 'YOSAPOL MALLAM'),
        Counter('64880104', 'PUNNARUJ WUTHIJARIYASAK'),
        Counter('64880177', 'JEDSADA MEENOI'),
        
      ],
    );
  }
}

class Counter extends StatefulWidget {
  final String id;
  final String _name;
  // final String projectName
  const Counter(this.id, this._name,  {super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFFD6A02)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              widget.id,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 20.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: _CounterLabel(widget._name),
          ),
          _CounterButton(
            count,
            onPressed: () {
              setState(() {
                ++count;
              });
            },
          ),
        ],
      ),
    );
  }
}


class _CounterLabel extends StatelessWidget {
  static const textStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 26.0,
  );

  final String _label;
  const _CounterLabel(this._label);

  @override
  Widget build(BuildContext context) {
    return Text(
      _label,
      style: _CounterLabel.textStyle,
    );
  }
}

class _CounterButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final count;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  const _CounterButton(this.count, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFD6A02),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
