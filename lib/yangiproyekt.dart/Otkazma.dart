import 'package:flutter/material.dart';

class Otkazmalar extends StatefulWidget {
  const Otkazmalar({super.key});

  @override
  State<Otkazmalar> createState() => _OtkazmalarState();
}

class _OtkazmalarState extends State<Otkazmalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("O`TKAZMALAR"),
        centerTitle: true,
        ),
        body: Center(
          child: Text("Bu Otkazmalar"),
        ),
    );
  }
}