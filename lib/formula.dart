import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class formula extends StatefulWidget {
  const formula({super.key});

  @override
  State<formula> createState() => _formulaState();
}

class _formulaState extends State<formula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              child: Text(style: TextStyle(fontSize: 25), "General formula"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image(
                image: AssetImage('assets/images/umumiy.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
