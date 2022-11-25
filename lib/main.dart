import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pressure_converter/bar.dart';
import 'package:pressure_converter/bar1.dart';
import 'package:pressure_converter/formula.dart';
import 'package:pressure_converter/malumot.dart';
import 'package:pressure_converter/paskal.dart';
import 'package:pressure_converter/simob%20ustuni.dart';

import 'Atmosfera bosimi.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: eritma(),
  ));
}

class eritma extends StatefulWidget {
  const eritma({super.key});

  @override
  State<eritma> createState() => _eritmaState();
}

class _eritmaState extends State<eritma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pressure converter")),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.language),
            color: const Color.fromARGB(255, 59, 255, 62),
            splashColor: const Color.fromARGB(255, 18, 197, 63),
          ),
        ],
        backgroundColor: const Color.fromARGB(217, 33, 196, 7),
      ),
      drawer: Drawer(
          child: Drawer(
              // ignore: unnecessary_new
              child: ListView(
        children: [
          Container(
            child: Image.asset("assets/images/2.gif"),
          ),

          // ignore: unnecessary_new

          new ListTile(
            title: new Text("information"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const malumot());
              Navigator.push(context, route);
            },
            trailing: new Icon(Icons.info),
          ),
          new ListTile(
            title: new Text("Formula"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const formula());
              Navigator.push(context, route);
            },
            trailing: new Icon(Icons.book),
          ),
          new ListTile(
            title: new Text("Exit Program"),
            onTap: () {
              SystemNavigator.pop();
            },
            trailing: new Icon(Icons.exit_to_app),
          ),
        ],
      ))),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/4.gif"), fit: BoxFit.cover)),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
            child: Center(
              child: Container(
                child: const Text(
                  '',
                  style: TextStyle(color: Colors.greenAccent, fontSize: 25),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(104, 37, 10, 190),
                shadowColor: Color.fromARGB(1, 2, 3, 4),
                padding: const EdgeInsets.all(30.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => foiz());
                Navigator.push(context, route);
              },
              child: const Text(
                'Conversion of atmospheric pressure to Pascal',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(104, 37, 10, 190),
                padding: const EdgeInsets.all(30.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => foiz());
                Navigator.push(context, route);
              },
              child: const Text(
                'Conversion of Pascal to atmospheric pressure',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(104, 37, 10, 190),
                padding: const EdgeInsets.all(30.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => paskal());
                Navigator.push(context, route);
              },
              child: const Text(
                'Convert mercury column to Pascal',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(104, 37, 10, 190),
                padding: const EdgeInsets.all(30.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => bar());
                Navigator.push(context, route);
              },
              child: const Text(
                'Conversion of atmospheric pressure to a bar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(104, 37, 10, 190),
                shadowColor: Colors.blue,
                padding: const EdgeInsets.all(30.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => bar1());
                Navigator.push(context, route);
              },
              child: const Text(
                'Convert bar to Mercury column',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
