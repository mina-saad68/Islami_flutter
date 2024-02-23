import 'package:flutter/material.dart';

class LanguageBottomSheets extends StatelessWidget {
   LanguageBottomSheets({super.key});

   bool isEnglish = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('English',style: TextStyle(color: isEnglish?Theme.of(context).primaryColor:Colors.black,fontSize: 22,fontWeight: FontWeight.w400),),
              isEnglish?Icon(Icons.done_outline_outlined,color: Theme.of(context).primaryColor,):SizedBox(),

            ],
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Arabic',style: TextStyle(color: isEnglish?Colors.black:Theme.of(context).primaryColor,fontSize: 22,fontWeight: FontWeight.w400),),
              isEnglish?SizedBox():Icon(Icons.done_outline_outlined,color: Theme.of(context).primaryColor),

            ],
          ),
        ],
      ),
    );
  }
}
