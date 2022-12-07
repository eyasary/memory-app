import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/score.dart';
import 'list.dart';

class Interface extends StatefulWidget {
  final int score;
  const Interface({Key? key, required this.score}) : super(key: key);

  @override
  State<Interface> createState() => _InterfaceState();
}
String r="";
class _InterfaceState extends State<Interface> {
  int i = 0, j = 0;
  int nb=0;
String ch1="",ch2="";
bool tap=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Score = $nb',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      SizedBox(height: 10,),
        Expanded(
          child: GridView.builder(
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: l.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(5),
                child: GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.25,
                    height: MediaQuery.of(context).size.height / 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 3,
                            spreadRadius: 0.8,
                            offset: Offset(2.0, 1),
                          )
                        ],
                        image: DecorationImage(
                          
                          image: AssetImage(
                            (l[index].accept == true)
                                ? l[index].img
                                : "images/quest.png",
                          ),
                          fit: BoxFit.contain,
                        )),
                  ),
                 
                  onTap: () {
                    setState(() {
                      if (ch1 == "" && ch2 == "") {
                        ch1 = l[index].img;
                        i = index;
                        l[i].accept = true;
                        tap = true;
                      } else if (ch1.length != 0 && ch2 == "") {
                        ch2 = l[index].img;
                        j = index;
                        l[j].accept = true;
                      }
                      print("score est $nb ch1=$ch1 ch2= $ch2");
                      if (ch1 == ch2) {
                        nb += 5;
        
                        l[i].accept = true;
                        l[j].accept = true;
                        ch1="";
                        ch2="";
                      }
                      if (ch1.length != 0 && ch2.length != 0 && ch1 != ch2) {
                        Timer(
                          const Duration(seconds: 1),
                          () {
                            setState(() {
                              l[i].accept = false;
                              l[j].accept = false;
                              ch1 = "";
                              ch2 = "";
                            });
                          },
                        );
                      }
                      Score(nb: nb);
                      if(nb==30)
                      r="bravo";
                      
                    });
                  },
                ),
              ),
            
          ),
        ),
        Text(r,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ],
    );
  }
}
