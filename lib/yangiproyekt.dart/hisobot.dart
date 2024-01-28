import 'package:flutter/material.dart';

class Hisobotlar extends StatefulWidget {
  const Hisobotlar({super.key});

  @override
  State<Hisobotlar> createState() => _HisobotlarState();
}

class _HisobotlarState extends State<Hisobotlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("HISOBOTLAR"),
        centerTitle: true,
        ),
        body: 
        Container(
          margin: EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          height: 40,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 98, 163, 216)),
          child: Text("Clik boyicha hisobot" ),
          

        ),
        
        
    

    );
  }
}