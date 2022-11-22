import 'package:flutter/material.dart';

class foiz extends StatefulWidget {
  const foiz({super.key});

  @override
  State<foiz> createState() => _foizState();
}

class _foizState extends State<foiz> {
  TextEditingController? mController = TextEditingController();
  TextEditingController? kController = TextEditingController();

  double? m;
  double? k;
  double? javob = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
            child: Container(
              child: const Text(
                'Atmosfera bosimini simob ustuniga aylantirish',
                style: TextStyle(color: Colors.greenAccent, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(255, 238, 235, 235)),
              child: TextField(
                controller: mController,
                decoration: InputDecoration(
                    hintText: "atmosfera bosimi   ",
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(157, 5, 182, 85)),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(color: Colors.teal))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(255, 238, 235, 235)),
              child: TextField(
                controller: mController,
                decoration: InputDecoration(
                    hintText: "barga aylantirish ",
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(157, 5, 182, 85)),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(color: Colors.teal))),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    k = double.parse(kController!.text);
                    m = double.parse(mController!.text);
                    javob = m! * 101.3;
                  });
                },
                child: const Text("Hisoblash")),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Javob :$javob kPa",
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
          ))
        ]),
      ),
    );
  }
}
