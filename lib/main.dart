import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:number_puzzle/designed_puzzle.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    home: designpuzzle(),
  ));
}

class numpuzzle extends StatefulWidget {
  const numpuzzle({Key? key}) : super(key: key);

  @override
  State<numpuzzle> createState() => _numpuzzleState();
}

class _numpuzzleState extends State<numpuzzle> {
  List list = [];
  List list2=["1","2","3","4","5","6","7","8",""];
  String winning="";

  void win() {
        setState(() {
          if(list==list2){
            winning="You won";
            list=["","","","","","","","",""];
          }
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      list = List.filled(9, "");
      for (int i = 0; i < 9; i++) {
        while (true) {
          int rn = Random().nextInt(9);
          if (!list.contains("$rn")) {
            list[i] = "$rn";
            break;
          }
        }
      }
      for (int i = 0; i < 9; i++) {
        if (list[i] == "0") {
          list[i] = "";
        }
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Center(child: Text("Number Puzzle")),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 50,
              width: double.infinity,
                  child: Center(
                    child: Text("$winning",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
              ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[1] == "") {
                        list[1] = list[0];
                        list[0] = "";
                      } else if (list[3] == "") {
                        list[3] = list[0];
                        list[0] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[0],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[0] == "") {
                        list[0] = list[1];
                        list[1] = "";
                      } else if (list[2] == "") {
                        list[2] = list[1];
                        list[1] = "";
                      } else if (list[4] == "") {
                        list[4] = list[1];
                        list[1] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[1],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[1] == "") {
                        list[1] = list[2];
                        list[2] = "";
                      } else if (list[5] == "") {
                        list[5] = list[2];
                        list[2] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[2],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[0] == "") {
                        list[0] = list[3];
                        list[3] = "";
                      } else if (list[4] == "") {
                        list[4] = list[3];
                        list[3] = "";
                      } else if (list[6] == "") {
                        list[6] = list[3];
                        list[3] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[3],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[1] == "") {
                        list[1] = list[4];
                        list[4] = "";
                      } else if (list[3] == "") {
                        list[3] = list[4];
                        list[4] = "";
                      } else if (list[5] == "") {
                        list[5] = list[4];
                        list[4] = "";
                      } else if (list[7] == "") {
                        list[7] = list[4];
                        list[4] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[4],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[2] == "") {
                        list[2] = list[5];
                        list[5] = "";
                      } else if (list[4] == "") {
                        list[4] = list[5];
                        list[5] = "";
                      } else if (list[8] == "") {
                        list[8] = list[5];
                        list[5] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[5],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[3] == "") {
                        list[3] = list[6];
                        list[6] = "";
                      } else if (list[7] == "") {
                        list[7] = list[6];
                        list[6] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[6],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[6] == "") {
                        list[6] = list[7];
                        list[7] = "";
                      } else if (list[4] == "") {
                        list[4] = list[7];
                        list[7] = "";
                      } else if (list[8] == "") {
                        list[8] = list[7];
                        list[7] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[7],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (list[5] == "") {
                        list[5] = list[8];
                        list[8] = "";
                      } else if (list[7] == "") {
                        list[7] = list[8];
                        list[8] = "";
                      }
                      win();
                    });
                  },
                  child: Center(
                      child: Text(list[8],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }


}
