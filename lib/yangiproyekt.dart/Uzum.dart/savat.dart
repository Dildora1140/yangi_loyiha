import 'dart:js_util';

import 'package:flutter/material.dart';

class Savat extends StatefulWidget {
  const Savat({super.key});

  @override
  State<Savat> createState() => _SavatState();
}

class _SavatState extends State<Savat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text(
          "Savat",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            child: ListTile(
              title: Text(
                "Chicken normal",
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                "11 000 so`m",
                textAlign: TextAlign.end,
              ),
            ),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.icon-icons.com/icons2/1555/PNG/512/fast-food-icons-freefried-chicken_107424.png"),
                  alignment: Alignment.topLeft,
                  scale: 1,
                )),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            child: ListTile(
              title: Text(
                "Coca cola ",
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                "6 000 so`m",
                textAlign: TextAlign.end,
              ),
            ),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Pl9kPT_Y-mfKdACI-oqCDbt-yAZVoTk33Z2BZtBuz0yqKEilU6UJU56BMOULrkkT1XY&usqp=CAU"),
                  alignment: Alignment.topLeft,
                  scale: 1,
                )),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            child: ListTile(
              subtitle: Text(
                "Salat Soleslav ",
                textAlign: TextAlign.center,
              ),
              title: Text(
                "10 000 so`m",
                textAlign: TextAlign.end,
              ),
            ),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.acouplecooks.com/wp-content/uploads/2019/05/Chopped-Salad-001_1-368x368.jpg"),
                  alignment: Alignment.topLeft,
                  scale: 1,
                )),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            child: ListTile(
              title: Text(
                "KFS chicken ",
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                "11 000 so`m",
                textAlign: TextAlign.end,
              ),
            ),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://media.istockphoto.com/id/458095847/photo/kfc.jpg?s=612x612&w=0&k=20&c=wR0P4kMCYxThYtrwBvdyGJrqTs-2WwSRP6jzMlXTHRk="),
                  alignment: Alignment.topLeft,
                  scale: 1,
                )),
          ),
        ],
      ),
    );
  }
}
