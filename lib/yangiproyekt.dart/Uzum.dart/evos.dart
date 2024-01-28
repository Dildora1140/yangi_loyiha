import 'package:flutter/material.dart';

class Evos_taomlari extends StatefulWidget {
  const Evos_taomlari({super.key});

  @override
  State<Evos_taomlari> createState() => _Evos_taomlariState();
}

class _Evos_taomlariState extends State<Evos_taomlari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/rasm3.jpg"))),
      ),
      Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: ListTile(
          title: Text(
            "Evos",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          subtitle: Text("Lavash- Burger-Aksiya"),
        ),
      ),
      Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white38,
          ),
          child: Icon(Icons.search),
          alignment: Alignment.centerLeft),
      Column(
        children: [
          Container(
            height: 360,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Evos.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      Evos[index]["oq tepa"],
                    ));
              },
            ),
          ),
        ],
      ),
    ]));
  }
}

List Evos = [
  {"oq tepa": "assets/lavash3.jpg"},
  {"oq tepa": "assets/lavash4.jpg"},
  {"oq tepa": "assets/lavash5.jpg"},
  {"oq tepa": "assets/lavash6.jpg"},
  {"oq tepa": "assets/lavash7.jpg"},
  {"oq tepa": "assets/lavash8.jpg"}
];
