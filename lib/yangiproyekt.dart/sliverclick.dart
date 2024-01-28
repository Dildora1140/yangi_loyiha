import 'package:flutter/material.dart';
// import 'package:testapp/yangiproyekt.dart/sliverclick.dart';

class Click extends StatefulWidget {
  const Click({super.key});

  @override
  State<Click> createState() => _ClickState();
}

class _ClickState extends State<Click> {
  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(children: [
              Text("Payme Go"),
            ]),
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: hsize,
                width: wsize,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 22, 219, 215),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 28,
                          right: 30,
                          bottom: 30,
                          top: 100,
                        ),
                        child: Text(
                          "Umumiy balans",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 250),
                        height: hsize,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 100,
                                  width: 100,
                                  //  color: Color.fromARGB(31, 218, 9, 9),
                                ),
                                Icon(Icons.wallet),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 100,
                                  width: 100,
                                  color: Color.fromARGB(31, 190, 4, 4),
                                ),
                                Container(
                                  height: 30,
                                  width: 50,
                                  color: Colors.amber,
                                  child: Container(
                                    height: hsize,
                                    width: wsize,
                                    child: Text(
                                      "Pul otkazish",
                                      style: TextStyle(fontSize: 28),
                                    ),
                                    color: Colors.white10,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(80),
                                topRight: Radius.circular(40))),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ]),
    );
  }
}
