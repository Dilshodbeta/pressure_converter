import 'package:flutter/material.dart';

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  TextEditingController? mController = TextEditingController();
  TextEditingController? kController = TextEditingController();

  double? m;

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
                'conversion of atmospheric pressure to a bar',
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
                      hintText:
                          "  Conversion of atmospheric pressure to a bar  ",
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(157, 5, 182, 85)),
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: const BorderSide(color: Colors.teal))),
                  keyboardType: TextInputType.number),
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('assets/images/manometr.gif'),
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    m = double.parse(mController!.text);
                    javob = m! * 1.01325;
                  });
                },
                child: const Text("Calculation")),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Answer :$javob bar",
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
          ))
        ]),
      ),
    );
  }
}
