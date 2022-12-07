import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Score extends StatelessWidget {
  final int nb;
  const Score({Key? key, required this.nb}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return  Text("Score = $nb",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),);
  }
}