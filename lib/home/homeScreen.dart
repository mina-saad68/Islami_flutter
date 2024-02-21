import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth/ahadeth_screen.dart';
import 'package:islami/home/quran/quran_screen.dart';
import 'package:islami/home/radio/radio_screen.dart';
import 'package:islami/home/settings/settings_screen.dart';
import 'package:islami/home/tasbeh/tasbeh_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
            onTap: (index) {
            selectedIndex=index;
            setState(() {

            });
            },
            items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/images/quran.png')),
              label: 'Quran'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
              label: 'Hadeth'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/images/sebha.png')),
              label: 'Sebha'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/images/radio.png')),
              label: 'Radio'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.settings),
              label: 'Settings')
        ]),
        body: tabs[selectedIndex],
      ),
    );
  }
  var tabs = [
    QuranScreen(),
    AhadethScreen(),
    TasbehScreen(),
    RadioScreen(),
    SettingsScreen()
  ];
}
