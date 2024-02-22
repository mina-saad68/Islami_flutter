import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/ahadeth/hadeth_content.dart';
import 'package:islami/home/ahadeth/hadeth_model.dart';

class AhadethScreen extends StatefulWidget {
  static const String routeName = 'ahadeth screen';

   AhadethScreen({super.key});

  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
   List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      readAhadethFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/ahadth_main.png'),
        Divider(
          color: Theme
              .of(context)
              .primaryColor,
          thickness: 3,
        ),
        Text('Ahadeth', style: GoogleFonts.elMessiri(fontSize: 24,fontWeight: FontWeight.w600),),
        Divider(
          color: Theme
              .of(context)
              .primaryColor,
          thickness: 3,
        ),

        Expanded(child: ListView.separated(itemBuilder: (context, index) {
          return Center(
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethContent.routeName,arguments: allAhadeth[index]);
                  },

                  child: Text(allAhadeth[index].title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)));
        },
            separatorBuilder: (context, index) =>Divider(
              color: Theme
                  .of(context)
                  .primaryColor,
              thickness: 1,
              indent: 45,
              endIndent: 45,
            ),
            itemCount: allAhadeth.length))

      ],
    );
  }

  void readAhadethFile() async {
    String ahadethFile = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadeth = ahadethFile.trim().split('#');
    for (int i = 0;i<ahadeth.length;i++) {
      String hadethOne = ahadeth[i];
      List<String> hadethLines = hadethOne.trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      HadethModel hadethModel = HadethModel(title, content);
      allAhadeth.add(hadethModel);
    }
    setState(() {

    });

  }
}
