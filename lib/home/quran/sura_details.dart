import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName= 'sura details screen ';
   SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {

   List<String> versesLines =[];

  @override
  Widget build(BuildContext context) {
    var suraModel=ModalRoute.of(context)!.settings.arguments as SuraModel;

    if (versesLines.isEmpty) {
      readSuraFile(suraModel.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bg.png'))
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(suraModel.title),
        ),
        body: versesLines.isEmpty?
        Center(child: CircularProgressIndicator()):
        ListView.builder(itemBuilder: (context, index) {
          return Text(versesLines[index]);
        },itemCount: versesLines.length),
      ),
    );
  }

  void readSuraFile(int index) async {
    String sura  = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines = sura.trim().split("\n");
    versesLines=lines;
    print('mina');
    setState(() {

    });
  }
}
