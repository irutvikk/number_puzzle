import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class designpuzzle extends StatefulWidget {
  const designpuzzle({Key? key}) : super(key: key);

  @override
  State<designpuzzle> createState() => _designpuzzleState();
}

class _designpuzzleState extends State<designpuzzle> {
  List list = [];
  List list2=["1","2","3","4","5","6","7","8",""];
  String winning="";
  String message="";

  void win() {
      setState(() {
        if(listEquals(list, list2)){
          winning="You won";
          list=["","","","","","","","","",""];
          message="Press Reset to play again";
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF874C62),
        centerTitle: true,
        elevation: 5,
        title: Text("Number Puzzle"),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 50,
                width: double.infinity,
                child: Center(
                    child: Text("$winning",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 50,
                width: double.infinity,
                child: Center(
                    child: Text("$message",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                            print("$list");
                            win();
                          });

                        },
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green),
                          child: Center(
                              child: Text("${list[0]}",
                                  style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green
                          ),
                          child: Center(
                              child: Text("${list[1]}",
                                  style: TextStyle(fontSize: 25),
                              ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green),
                          child: Center(
                              child: Text("${list[2]}",
                                  style: TextStyle(fontSize: 25))),
                        ),
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
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green),
                          child: Center(
                              child: Text("${list[3]}",
                                  style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green),
                          child: Center(
                              child: Text("${list[4]}",
                                  style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green),
                          child: Center(
                              child: Text("${list[5]}",
                                  style: TextStyle(fontSize: 25))),
                        ),
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
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green),
                          child: Center(
                              child: Text("${list[6]}",
                                  style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green),
                          child: Center(
                              child: Text("${list[7]}",
                                  style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 125,
                      width: 100,
                      margin: EdgeInsets.all(4),
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
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(2)),
                              depth: 3,
                              lightSource: LightSource.bottomRight,
                              color: Colors.grey.shade200,
                              intensity: double.infinity,
                              shadowLightColor: Colors.purple,
                              shadowDarkColor: Colors.green),
                          child: Center(
                              child: Text("${list[8]}",
                                  style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    setState(() {

                      list=[];
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
                      print("=>$list");
                    });
                    winning="";
                    message="";
                  },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      height: 55,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.purple,
                              spreadRadius: 0.2,
                              blurRadius: 10,
                              offset: Offset(4, 4)),
                          BoxShadow(
                              color: Colors.green,
                              spreadRadius: 0.2,
                              blurRadius: 10,
                              offset: Offset(-4, -4))
                        ],
                      ),
                      child: Center(
                          child: Text("Reset",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )
    );
  }
}
