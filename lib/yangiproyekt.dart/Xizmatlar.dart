import 'package:flutter/material.dart';

class Xizmatlar extends StatefulWidget {
  const Xizmatlar({super.key});

  @override
  State<Xizmatlar> createState() => _XizmatlarState();
}

class _XizmatlarState extends State<Xizmatlar> {
  List xizmats =[{"name":"kommunal to'lovlar","icon":Icons.miscellaneous_services_sharp,},
  {"name":"Click Premium","icon":Icons.workspace_premium,"rasm":""},
  {"name":"Aksiya","icon":Icons.present_to_all,},
  {"name":"Katta cashback","icon":Icons.score,},
  {"name":"Joylarda  to'lov","icon":Icons.location_on,},
  {"name":"Mening hisobim","icon":Icons.check,},
  {"name":"Saralangan","icon":Icons.star,},
  {"name":"Mening uyim","icon":Icons.home,},
  {"name":"Mening avto","icon":Icons.car_repair,},
  {"name":"Mening qarzlarim","icon":Icons.car_repair,},
  {"name":"Avia chiptalar","icon":Icons.airplanemode_on,},
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("XIZMATLAR BOLIMI"),
        centerTitle: true,
        ),
        body: Container(
         
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white30,borderRadius:
          BorderRadius.only(topLeft: Radius.circular(15),
          // bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15) ),),
          
          child: GridView.builder(
            itemCount:xizmats.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width*0.3,
              mainAxisExtent: MediaQuery.of(context).size.width*0.3,
              
              crossAxisSpacing: 10,
            
             
              mainAxisSpacing: 10,
              ),
              itemBuilder: (context,index){
                return InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => Xizmatlar(),));
                    });
                  },
                  child: Container(
                    color: Colors.black38,
                    child: Column(children: [Container(height: 70,width: 100,child: Icon(xizmats[index]["icon"])),Text(xizmats[index]["name"])],),
                  ),
                   
                );
              }


            ) ,),

        )
    ;
  }
}