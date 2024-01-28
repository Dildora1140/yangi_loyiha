import 'package:flutter/material.dart';

class Kabinet extends StatefulWidget {
  const Kabinet({super.key});

  @override
  State<Kabinet> createState() => _KabinetState();
}

class _KabinetState extends State<Kabinet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("KABINET"),
        centerTitle: true,
        ),
        body: Center(
          child: Text("Bu kabinet"),
        ),
    );
  }
}