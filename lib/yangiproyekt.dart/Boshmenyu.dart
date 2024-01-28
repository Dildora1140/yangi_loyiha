import 'package:flutter/material.dart';
import 'package:testapp/yangiproyekt.dart/tolov.dart';
// import 'package:mobile2/tolov.dart';

class Boshsahifa extends StatefulWidget {
  const Boshsahifa({super.key});

  @override
  State<Boshsahifa> createState() => _BoshsahifaState();
}

class _BoshsahifaState extends State<Boshsahifa> {
  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;
    double Wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [],
        ),
      ),

      appBar: AppBar(
        toolbarHeight: 200,
        // scrolledUnderElevation: ,
        // title: Text(""),
        centerTitle: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Umimiy balans"),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: hsize * 0.9,
              width: Wsize,

              //  backgroundImage:NetworkImage("https://as1.ftcdn.net/v2/jpg/03/03/05/78/1000_F_303057896_UOqpWEaLAEwRVFlh5OUq0RIB3EfHNnAi.jpg"),
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

      // Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: BoxDecoration(
      //     color: const Color.fromARGB(255, 111, 150, 182),
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(15),
      //         // bottomLeft: Radius.circular(15),
      //         topRight: Radius.circular(15)),
      //   ),
      //   child: GridView.builder(
      //       itemCount: 0,
      //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //         maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.3,
      //         mainAxisExtent: MediaQuery.of(context).size.width * 0.3,
      //         crossAxisSpacing: 10,
      //         mainAxisSpacing: 10,
      //       ),
      //       itemBuilder: (context, index) {
      //         return InkWell(
      //           onTap: () {
      //             setState(() {
      //               Navigator.push(

      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => Tolov(),
      //                   ));
      //             });
      //           },
      //           child: Container(
      //             color: Colors.white38,
      //           ),
      //         );
      //       }),
      // ),
    );
  }
}
