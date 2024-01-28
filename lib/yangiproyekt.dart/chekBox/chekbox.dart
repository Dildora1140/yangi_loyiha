import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

enum SingingCharacter { bir, ikki, uch, tort, besh }

List<String> list = <String>["bir", "ikki", "uch", "tort", "besh"];

class _CheckBoxPageState extends State<CheckBoxPage> {
  TextEditingController name = TextEditingController();
  bool isChecked = true;
  String item = list.first;
  SingingCharacter? _character = SingingCharacter.bir;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: name,
          ),
          Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              }),
          // DropdownButton<String>(
          //     value: item,
          //     icon: Icon(Icons.arrow_downward),
          //     elevation: 16,
          //     style: TextStyle(color: Colors.deepPurple),
          //     underline: Container(
          //       height: 4,
          //       color: Colors.deepPurpleAccent,
          //     ),
          //     onChanged: (String? value) {
          //       setState(() {
          //         item = value!;
          //       });
          //     },
          //     items: list.map<DropdownMenuItem<String>>((String value) {
          //       return DropdownMenuItem<String>(
          //         value: value,
          //         child: Text(value),
          //       );
          //     })),
          DatePickerDialog(
            firstDate: DateTime(1900),
            lastDate: DateTime(3000),
            currentDate: DateTime.now(),
          ),
          TimePickerDialog(initialTime: TimeOfDay.now())
        ],
      ),
    ));
  }
}
