import 'package:flutter/material.dart';

class Taklif extends StatefulWidget {
  const Taklif({super.key});

  @override
  State<Taklif> createState() => _TaklifState();
}

class _TaklifState extends State<Taklif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Do`stlarni taklif qiling"),
      ),
      body: Container(
          // margin: EdgeInsets.only(top: 5),
          height: 300,
          width: MediaQuery.of(context).size.width * 05,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfh0ThVmi1qjMFXSfaZbq-xv-fXPqwZ_n_ysdppaZwgcciIclhFawuH42JgdUKl8wVKdU&usqp=CAU",
                  ),
                  fit: BoxFit.fill)),
          child: Container(
            margin: EdgeInsets.only(top: 380),
            height: 380,
            // color: Colors.black,
            width: MediaQuery.of(context).size.width * 07,
            child: ListTile(
              title: Text(
                "40 000 so`m sovg`a qilamiz",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  "Do`stingizni Uzum Tezkorga taklif qiling, 40 000 so`mlik chegirmaga promokodni bo`lishin va o`zingiz uchun ham xuddi shundayini oling. Chegirma 130 00 so`mdan ortiq buyurtmalar uchun amal qiladi."),
            ),
          )),
    );
  }
}
