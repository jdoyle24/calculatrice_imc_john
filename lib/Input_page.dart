import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculatrice IMC'),
      ),
        body:Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(
                    child: null),
                Expanded(child: null)],
            )),
            Expanded(child: null),
            Expanded(child: null),
          ],
        )
    );
  }
}
Container(
margin: EdgeInsets.all(15.0),
decoration: BoxDecoration(
color: Colors.cyanAccent,
borderRadius: BorderRadius.circular(10.0),
),
),