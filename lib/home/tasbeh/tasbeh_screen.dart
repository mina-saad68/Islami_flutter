import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasbehScreen extends StatelessWidget {
  static const String routeName = 'quran screen';
  const TasbehScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Container(
            color: Colors.purpleAccent,
            height: 100,
            width: 73,
            alignment: Alignment.center,
            child: Image.asset('assets/images/headofseb7a.png',fit: BoxFit.fill,))),
        Center(child: Container(
            height: 200,
            color: Colors.limeAccent,
            child: Image.asset('assets/images/bodyofseb7a.png'))),
        Text('Number of tasbeh',style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600),),
        Container(
          height: 80,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).primaryColor,

          ),
          child: Text('0',style: TextStyle(color: Colors.black,fontSize: 24)),
        ),
        Container(
          height: 50,
          width: 137,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).primaryColor,

          ),
          child: Text('sob7an allah',style: TextStyle(color: Colors.white,fontSize: 18)),
        ),
      ],
    );
  }
}
