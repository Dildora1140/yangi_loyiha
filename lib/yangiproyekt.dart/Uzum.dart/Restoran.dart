import 'package:flutter/material.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/Look.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/Til.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/evos.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/feedup.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/oqtepa.dart';

List<Map<String, dynamic>> rasmlar = [
  {
    "name": "30 minut",
    "rasm":
        "https://thumb.tildacdn.com/tild6239-6332-4135-a364-656161303737/-/resize/690x/-/format/webp/Image_3-min.png",
    "fon": "assets/yuqori1.jpg",
    "kafe": "Evos",
    "kafe nomi": "assets/rasm5.jpg"
  },
  {
    "name": "Aksiya",
    "rasm": "https://cdn-icons-png.flaticon.com/512/3790/3790219.png",
    "fon": "assets/yuqori2.jpg",
    "kafe": "Oqtepa Lavash",
    "kafe nomi": "assets/rasm6.jpg"
  },
  {
    "name": "Yangi",
    "rasm":
        "https://cdn.skillbox.pro/landgen/blocks/start-screen/115024/sm/a75a7d71-545f-49ab-8565-ec54d75bd4e3.png",
    "fon": "assets/yuqori3.jpg",
    "kafe": "Boon!",
    "kafe nomi": "assets/rasm7.jpg"
  },
  {
    "name": "Burger",
    "rasm": "https://cdn-icons-png.flaticon.com/512/198/198416.png",
    "fon": "assets/rasm1.jpg",
    "kafe": "KFC",
    "kafe nomi": "assets/rasm8.jpg"
  },
  {
    "name": "Pitsa",
    "rasm": "https://cdn-icons-png.flaticon.com/512/1205/1205772.png",
    "fon": "assets/rasm3.jpg",
    "kafe": "Les Ailes",
    "kafe nomi": "assets/rasm9.jpg"
  },
  {
    "name": "Salat",
    "rasm":
        "https://png.pngtree.com/png-vector/20190116/ourmid/pngtree-vegetable-salad-food-vegetables-vegetable-salad-food-pattern-png-image_388734.jpg",
    "kafe": "Feed Up",
    "kafe nomi": "assets/rasm7.jpg",
    "fon": "assets/rasm1.jpg",
  },
  {
    "name": "Milliy taom",
    "rasm":
        "https://play-lh.googleusercontent.com/v1cs4pivt6kEmelkx0bj__8bBtKZ8Hz6zLLXUVgI96Zgo7VpvYwJOvmzGZmZYzZiHvo",
    "kafe": "Gosht Doner",
    "kafe nomi": "assets/rasm8.jpg",
    "fon": "assets/rasm2.jpg",
  },
  {
    "name": "Osh",
    "rasm":
        "https://cdn.imgbin.com/0/4/19/imgbin-pilaf-uzbek-cuisine-middle-eastern-cuisine-restaurant-cook-carrot-y3TiRbV8yntrPmEtUEeivwzkx.jpg",
    "kafe": "Hotdoggers",
    "kafe nomi": "assets/rasm5.jpg",
    "fon": "assets/rasm3.jpg",
  }
];

class Restoranlar extends StatefulWidget {
  const Restoranlar({super.key});

  @override
  State<Restoranlar> createState() => _RestoranlarState();
}

class _RestoranlarState extends State<Restoranlar> {
  @override
  List taomlar = [
    Look_taomlari(),
    Evos_taomlari(),
    Oqtepa_lavash(),
    FeedUp_taomlari(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 4,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rasmlar.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          left: 5,
                          top: 15,
                        ),
                        height: 100,
                        width: 300,
                        child: Image.asset(rasmlar[index]["fon"]),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 40,
                  child: Icon(
                    Icons.search,
                  ),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rasmlar.length,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 80,
                          width: 150,
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: ListTile(
                            title: Text(rasmlar[index]["name"]),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                rasmlar[index]["rasm"],
                              ),
                            ),
                          ));
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 3,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: rasmlar.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.all(25),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 200,
                        child: InkWell(
                            onTap: () {
                              setState(
                                () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => taomlar[index],
                                      ));
                                },
                              );
                            },
                            child: Image.asset(
                              rasmlar[index]["kafe nomi"],
                              fit: BoxFit.fill,
                            )),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
