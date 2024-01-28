import 'package:flutter/material.dart';


class Tolov extends StatefulWidget {
  const Tolov({super.key});

  @override
  State<Tolov> createState() => _TolovState();
}

class _TolovState extends State<Tolov> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("dastur nomi"),
        backgroundColor: Colors.black38,
        centerTitle: false,
      ),
      body: Center(
        child: Text("Tolov qilish bo'limi"),
      
      ),
    );
  }
}
