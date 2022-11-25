import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class malumot extends StatefulWidget {
  const malumot({super.key});

  @override
  State<malumot> createState() => _malumotState();
}

class _malumotState extends State<malumot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/images/3.gif'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                    style: TextStyle(fontSize: 20),
                    "Pressure (symbol: p or P) is the force applied perpendicular to the surface of an object per unit area over which that force is distributed. "
                    "Various units are used to express pressure. Some of these derive from a unit of force divided by a unit of area; the SI unit of pressure, the pascal (Pa), for example, is one newton per square metre (N/m2); similarly, the pound-force per square inch (psi) is the traditional unit of pressure in the imperial and U.S. customary systems. Pressure may also be expressed in terms of standard atmospheric pressure; the atmosphere (atm) is equal to this pressure, and the torr is defined as 1⁄760 of this. Manometric units such as the centimetre of water, millimetre of mercury, and inch of mercury are used to express pressures in terms of the height of column of a particular fluid in a manometer. "),
              )),
        ],
      ),
    );
  }
}
