import 'package:flutter/material.dart';
import 'package:testapp/yangiproyekt.dart/Api/request.dart';
import 'package:testapp/yangiproyekt.dart/Api/request1.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FutureBuilder(
              future: SportApi().getSport(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else if (snapshot.hasData) {
                  var sportData = snapshot.data;
                  return Column(
                    children: [
                      Text(sportData.toString()),
                      ElevatedButton(
                          onPressed: () {
                            XabarniYukla().xabarniOl();
                          },
                          child: Text("Loading"))
                    ],
                  );
                } else {
                  return CircularProgressIndicator();
                }
              }),
        ),
      ),
    );
  }
}
