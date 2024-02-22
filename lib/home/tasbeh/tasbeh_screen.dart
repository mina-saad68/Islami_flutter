import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasbehScreen extends StatefulWidget {
  static const String routeName = 'quran screen';

  const TasbehScreen({super.key});

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  int counter = 0;
  int index = 0;
  double angle = 0;

  List<String> tasbehLines = [
    'سبحان الله',
    'استغفر الله',
    'الله اكبر',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    'assets/images/bodyofseb7a.png',
                    height: 232,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/headofseb7a.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Number of tasbeh',
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
            child: Text('$counter',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              tasbeh();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).primaryColor,
              ),
              child: Text(tasbehLines[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  )),
            ),
          ),
        ],
      ),
    );
  }

  void tasbeh() {
    if (counter < 33) {
      angle +=0.7;
      counter++;
    } else {
      if (index < 2) {
        index++;
        counter = 0;
      } else {
        index =0;
        counter = 0;
      }
    }

    setState(() {});
  }
}
