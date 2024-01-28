import 'package:flutter/material.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/Buyurtmalar.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/Profil.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/Restoran.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Restoran.dart';

import 'package:testapp/yangiproyekt.dart/Uzum.dart/savat.dart';

class Uzummarket extends StatefulWidget {
  const Uzummarket({super.key});

  @override
  State<Uzummarket> createState() => _UzummarketState();
}

class _UzummarketState extends State<Uzummarket> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: Text("vgfhyfdyf"),
      //     ),
      body: currentIndex == 0
          ? Restoranlar()
          : currentIndex == 1
              ? Savat()
              : currentIndex == 2
                  ? Buyurtmalar()
                  : Profil(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.food_bank_outlined,
                size: 20,
                color: Colors.lightBlueAccent,
              ),
              label: "Restoranlar",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket_sharp,
                size: 20,
                color: Colors.lightBlueAccent,
              ),
              label: "Savat",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_sharp,
                size: 20,
                color: Colors.lightBlueAccent,
              ),
              label: "Buyurtmalar",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 20,
              color: Colors.lightBlueAccent,
            ),
            label: "Profil",
            backgroundColor: Colors.white,
          )
        ],
        currentIndex: currentIndex,
        elevation: 20,
        iconSize: 20,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
