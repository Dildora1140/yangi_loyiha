import 'package:flutter/material.dart';
import 'package:testapp/yangiproyekt.dart/Uzum.dart/Uzummarket.dart';

class Uzumilova extends StatefulWidget {
  const Uzumilova({super.key});

  @override
  State<Uzumilova> createState() => _UzumilovaState();
}

class _UzumilovaState extends State<Uzumilova> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Uzummarket(),
        )));
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(
                    "https://play-lh.googleusercontent.com/RZxXDZrHo6BeK8Lsq4rPGLVNaTx5SaEcMNWjRUihwTFISw3Y_73Opx-22KKrMJdrJA=w240-h480-rw"),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
