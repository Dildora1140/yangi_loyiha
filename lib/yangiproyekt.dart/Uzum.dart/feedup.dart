import 'package:flutter/material.dart';

class FeedUp_taomlari extends StatefulWidget {
  const FeedUp_taomlari({super.key});

  @override
  State<FeedUp_taomlari> createState() => _FeedUp_taomlariState();
}

class _FeedUp_taomlariState extends State<FeedUp_taomlari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("assets/rasm4.jpg"), fit: BoxFit.fill)),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              title: Text(
                "Feed Up",
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
                  itemCount: FeedUp.length,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          FeedUp[index]["oq tepa"],
                        ));
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

List FeedUp = [
  {"oq tepa": "assets/lavash3.jpg"},
  {"oq tepa": "assets/lavash4.jpg"},
  {"oq tepa": "assets/lavash5.jpg"},
  {"oq tepa": "assets/lavash6.jpg"},
  {"oq tepa": "assets/lavash7.jpg"},
  {"oq tepa": "assets/lavash8.jpg"}
];
