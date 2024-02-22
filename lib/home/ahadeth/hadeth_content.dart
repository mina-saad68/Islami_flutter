import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth/hadeth_model.dart';

class HadethContent extends StatelessWidget {
  static const String routeName = 'hadethcontent';

  const HadethContent({super.key});

  @override
  Widget build(BuildContext context) {
    var hadethModel = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return  Container(
      decoration: BoxDecoration(image: 
      DecorationImage(image: AssetImage('assets/images/bg.png'))
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(hadethModel.title,),
            
          ),
        body: Card(
          margin: EdgeInsets.symmetric(horizontal: 28,vertical: 50),
          color: Colors.white,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(itemBuilder: (context, index) {
              return Text(hadethModel.content[index],style: TextStyle(fontSize: 18),textAlign: TextAlign.center,);
            },itemCount: hadethModel.content.length),
          ),
        ),
      
          
      
        ),
    );
  }
}
