import 'package:flutter/material.dart';
import 'package:testapp/yangiproyekt.dart/Api/myhomepage.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/uzummenyu.dart';
import 'package:testapp/yangiproyekt.dart/chekBox/chekbox.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Look.dart';
// import 'package:testapp/yangiproyekt.dart/Boshmenyu.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Buyurtmalar.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Profil.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Restoran.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Til.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Uzummarket.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/evos.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/feedup.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/oqtepa.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/promokodlar.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/restaranlist.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/savat.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/taklif.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/uzummenyu.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Restoran.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/Uzummarket.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/restaranlist.dart';
// import 'package:testapp/yangiproyekt.dart/Uzum.dart/savat.dart';

// import 'package:testapp/yangiproyekt.dart/Uzum.dart/uzummenyu.dart';
// import 'package:testapp/yangiproyekt.dart/clickparol.dart';
// import 'package:testapp/yangiproyekt.dart/sliverclick.dart';
// import 'package:testapp/yangiproyekt.dart/tolov.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uzum Market',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
