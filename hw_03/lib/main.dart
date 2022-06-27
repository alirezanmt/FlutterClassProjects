import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Color.fromRGBO(102, 255, 217, 1.0),
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(102, 217, 255, 1.0),
      title: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Color.fromRGBO(102, 102, 255, 1.0),
            width: 2.0,
          ))),
          child: Text(
            "Joft 6",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(102, 102, 255, 1.0),
            ),
          ),
        ),
      ),
    ),
    body: joft6body(),
  )));
}

// class joft6body extends StatelessWidget {
//   const joft6body({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     int leftDice = 0;
//     int rightDice = 0;
//     return Center(
//         child: Row(
//       children: [
//         Expanded(
//           child: FlatButton(
//             onPressed: (){
//               leftDice += 1;
//               print(leftDice);
//             },
//             child: Image(
//               image: AssetImage("images/dice_${leftDice+1}.png"),
//             ),
//           ),
//         ),
//         Expanded(
//           child: FlatButton(
//             onPressed: (){
//               print("d1");
//             },
//             child: Image(
//               image: AssetImage("images/dice_${rightDice+1}.png"),
//             ),
//           ),
//         ),
//       ],
//     ));
//   }
// }

class joft6body extends StatefulWidget {
  const joft6body({Key? key}) : super(key: key);

  @override
  State<joft6body> createState() => _joft6bodyState();
}

class _joft6bodyState extends State<joft6body> {
  int leftDice = 0;
  int rightDice = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6);
                  });

                  print(leftDice + 1);
                },
                child: Image(
                  image: AssetImage("images/dice_${leftDice + 1}.png"),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDice = Random().nextInt(6);
                  });
                  print(rightDice + 1);
                },
                child: Image(
                  image: AssetImage("images/dice_${rightDice + 1}.png"),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Expanded(
            child: Center(child: Text("${leftDice+1}", style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),)),
            ),
            Expanded(
              child: Center(child: Text("${rightDice+1}", style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),)),
            )
          ],
        )
      ],
    ));
  }
}
