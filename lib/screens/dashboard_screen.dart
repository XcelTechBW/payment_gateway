import 'package:flutter/material.dart';
import 'package:payment_gateway/screens/dashboard_subscreens.dart';

class DashboardScreen extends StatefulWidget {
   DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int subScreenIndex = 0;

  List<Widget> subScreens = const [
    Home(),
    Feed(),
    Alert(),
    Profile(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(subScreens[subScreenIndex].runtimeType.toString()),
      ),
      body: subScreens[subScreenIndex],
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.qr_code), onPressed: (){},),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            subScreenIndex = index;
          });
        },
        elevation: 0,

        currentIndex: subScreenIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Alert'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
