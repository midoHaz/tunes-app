import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';
import 'package:tunes_app/widgets/Tune_item.dart';

class TuneView extends StatelessWidget {
  const  TuneView({Key? key}) : super(key: key);
  final List<TuneModel>tunes =const [
    TuneModel(color:Colors.red ,sound: 'note1.wav'),
    TuneModel(color:Colors.orange ,sound: 'note2.wav'),
    TuneModel(color:Colors.yellow ,sound: 'note3.wav'),
    TuneModel(color:Colors.green ,sound: 'note4.wav'),
    TuneModel(color:Colors.cyan ,sound: 'note5.wav'),
    TuneModel(color:Colors.blue ,sound: 'note6.wav'),
    TuneModel(color:Colors.purple ,sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo,elevation: 0.0,centerTitle: true,
        title:const Text("Flutter Tune",style: TextStyle(color: Colors.white),
        ) ,
      ),
      body:Column(
        children: tunes.map((e) => TuneItem(tune: e,)).toList(),
      ),
    );
  }

}
