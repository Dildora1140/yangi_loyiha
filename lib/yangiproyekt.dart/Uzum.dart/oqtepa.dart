import 'package:flutter/material.dart';

class Oqtepa_lavash extends StatefulWidget {
  const Oqtepa_lavash({super.key});

  @override
  State<Oqtepa_lavash> createState() => _Oqtepa_lavashState();
}

class _Oqtepa_lavashState extends State<Oqtepa_lavash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/rasm2.jpg"))),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              title: Text(
                "Oqtepa Lavash",
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
                  itemCount: Oqtepa.length,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 150,
                        width: 1500,
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          Oqtepa[index]["oq tepa"],
                        ));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List Oqtepa = [
  {"oq tepa": "assets/lavash3.jpg"},
  {"oq tepa": "assets/lavash4.jpg"},
  {"oq tepa": "assets/lavash5.jpg"},
  {"oq tepa": "assets/lavash6.jpg"},
  {"oq tepa": "assets/lavash7.jpg"},
  {"oq tepa": "assets/lavash8.jpg"}
];
