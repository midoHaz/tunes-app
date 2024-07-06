import 'package:flutter/material.dart';

import '../models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({Key? key,required this.tune}) : super(key: key);

  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:(){
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
