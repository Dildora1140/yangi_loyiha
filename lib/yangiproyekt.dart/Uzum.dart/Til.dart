import 'package:flutter/material.dart';

class Til extends StatefulWidget {
  const Til({super.key});

  @override
  State<Til> createState() => _TilState();
}

class _TilState extends State<Til> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tilni tanlang"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Container(
                margin: EdgeInsets.only(top: 5, right: 10),
                height: 40,
                width: MediaQuery.of(context).size.width * 08,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "O`zbek tili",
                  style: TextStyle(fontSize: 22),
                )),
            subtitle: Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                height: 40,
                width: MediaQuery.of(context).size.width * 08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Rus tili",
                  style: TextStyle(fontSize: 24),
                )),
          ),
          //   child: Text("Rus tili"),
          // ),
          // Container(
          //   margin: EdgeInsets.only(top: 15, left: 4),
          //   height: 60,
          //   width: MediaQuery.of(context).size.width * 08,
          //   child: Text("O`zbek tili"),
        ],
      ),
    );
  }
}

