import 'package:flutter/material.dart';
import 'package:islami/home/settings/theme_bottom_sheet.dart';
import 'package:islami/home/sheets/language_bottom_sheets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'quran screen';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 75,horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),

          SizedBox(
            height: 18,
          ),
          InkWell(

            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context, builder: (context) {
                return Container(
                  height: MediaQuery.of(context).size.height*0.6,
                  child: LanguageBottomSheets(),
                );
              },);
            },
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),borderRadius: BorderRadius.circular(15)
                ),
                child:
                Text('Arabic',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
          ),

          SizedBox(
            height: 55,
          ),


          Text('Theme',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),

          SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context, builder: (context) {
                return Container(
                  height: MediaQuery.of(context).size.height*0.6,
                  child: THemeBottomSheet(),
                );
              },);
            },
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),borderRadius: BorderRadius.circular(15)
                ),
                child:
                Text('Light',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
          ),
        ],
      ),
    );
  }
}
