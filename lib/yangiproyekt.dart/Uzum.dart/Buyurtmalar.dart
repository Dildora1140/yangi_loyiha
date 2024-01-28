import 'package:flutter/material.dart';

class Buyurtmalar extends StatefulWidget {
  const Buyurtmalar({super.key});

  @override
  State<Buyurtmalar> createState() => _BuyurtmalarState();
}

class _BuyurtmalarState extends State<Buyurtmalar> {
  List<Map> buyurtmalar = [
    {
      "name": "Evos",
      "vaqti": "15 dek 00:22  Yetkazildi",
      "narxi": "62 000 som"
    },
    {
      "name": "LOOK",
      "vaqti": "15 dek 00:32  Bekor qilindi",
      "narxi": "68 000 som"
    },
    {
      "name": "Oq Tepa",
      "vaqti": "15 dek 00:60  Bekor qilindi",
      "narxi": "200 000 som"
    },
    {
      "name": "Street",
      "vaqti": "15 dek 01:01  Amalga oshirilmoqda",
      "narxi": "168 000 som"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buyurtmalar",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
          itemCount: buyurtmalar.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(top: 15),
              margin: EdgeInsets.only(bottom: 1),
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Color.fromARGB(153, 245, 239, 239),
              child: ListTile(
                title: Text(buyurtmalar[index]["name"]),
                subtitle: Text(buyurtmalar[index]["vaqti"]),
                trailing: Text(
                  buyurtmalar[index]["narxi"],
                ),
              ),
            );
          }),
    );
  }
}
