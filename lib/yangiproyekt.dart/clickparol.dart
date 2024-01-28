import 'package:flutter/material.dart';

// import 'package:testapp/yangiproyekt.dart/Boshmenyu.dart';

class Kirishsahifasi extends StatefulWidget {
  const Kirishsahifasi({super.key});

  @override
  State<Kirishsahifasi> createState() => _KirishsahifasiState();
}

class _KirishsahifasiState extends State<Kirishsahifasi> {
  // TextEditingController _login = TextEditingController();
  TextEditingController _parol = TextEditingController();
  String username = "Click-Pin kiriting";

  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;
    double Wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Umimiy balans"),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: hsize * 0.9,
              width: Wsize,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 85, 85, 85),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 28,
                      top: 30,
                      bottom: 30,
                    ),
                    child: Text("balans"),
                  )
                ],
              ),
            );
          }))
        ],
      ),

      // body: Container(
      //   decoration: BoxDecoration(
      //       color: const Color.fromARGB(137, 0, 0, 0),
      //       borderRadius: BorderRadius.circular(50)),
      //   padding: EdgeInsets.all(100),
      //   alignment: Alignment.center,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(username),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       TextFormField(
      //         controller: _parol,
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(),
      //           // icon: Icon(
      //           //   Icons.block,
      //           //   size: 50,
      //           // ),
      //           hoverColor: Color.fromARGB(9, 176, 53, 11),
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           if (_parol.text == "1140") {
      //             setState(() {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => Boshsahifa(),
      //                   ));
      //             });
      //           } else {
      //             // _login.clear();
      //             _parol.clear();
      //           }
      //         },
      //         child: Text("Next"),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
