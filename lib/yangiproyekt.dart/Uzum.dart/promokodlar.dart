import 'package:flutter/material.dart';

class Promokod extends StatefulWidget {
  const Promokod({super.key});

  @override
  State<Promokod> createState() => _PromokodState();
}

class _PromokodState extends State<Promokod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/9972/9972749.png"))),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 100,
                width: 300,
                child: Text(
                  "Sizda Hali saqlangan promokodlar yuq!!!",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
