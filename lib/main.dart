import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Foiz konsentratsiya.dart';

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
        title: const Center(child: Text("pressure converter")),
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
            child: Image.asset("assets/images/drayverrasm.gif"),
          ),

          // ignore: unnecessary_new

          new ListTile(
            title: new Text("Malumot"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const foiz());
              Navigator.push(context, route);
            },
            trailing: new Icon(Icons.info),
          ),
          new ListTile(
            title: new Text("Formula"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const foiz());
              Navigator.push(context, route);
            },
            trailing: new Icon(Icons.book),
          ),
          new ListTile(
            title: new Text("Dasturdan Chiqish"),
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
                image: AssetImage("assets/images/mainrasm.gif"),
                fit: BoxFit.cover)),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
            child: Container(
              child: const Text(
                'Eritma  konsentratsiyasini topish',
                style: TextStyle(color: Colors.greenAccent, fontSize: 25),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
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
                'Foiz konsentartsiyasini topish',
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
                'Normal konsentartsiyasini topish',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
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
                'Molyar konsentartsiyasini topish',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
