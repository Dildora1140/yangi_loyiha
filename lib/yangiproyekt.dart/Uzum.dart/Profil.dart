import 'package:flutter/material.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/Til.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/promokodlar.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/taklif.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  List<Map> profil = [
    {
      "name": "Promokodlar",
      "image": "https://static.thenounproject.com/png/1515294-200.png",
    },
    {
      "name": "Do`stingizni taklif qilin",
      "image":
          "https://cdn2.iconfinder.com/data/icons/business-starterpack-1/80/Gift-512.png",
    },
    {
      "name": "Yordam",
      "image": "https://cdn-icons-png.flaticon.com/512/3843/3843455.png",
    },
    {
      "name": "Til",
      "image": "https://cdn-icons-png.flaticon.com/512/3269/3269817.png",
    },
    {
      "name": "Chiqish",
      "image": "https://cdn-icons-png.flaticon.com/512/320/320140.png",
    },
  ];
  List royxat = [Promokod(), Taklif(), Til()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dildora",
          style: TextStyle(
            fontSize: 27,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: profil.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => royxat[index],
                      ));
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 15),
                margin: EdgeInsets.only(bottom: 1),
                width: MediaQuery.of(context).size.width,
                height: 70,
                color: Colors.white,
                child: ListTile(
                  title:
                      Text(profil[index]["name"], textAlign: TextAlign.center),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      profil[index]["image"],
                      scale: 1,
                    ),
                    radius: 25,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
