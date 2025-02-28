import 'package:app1/bottomtab/bottom_tab_widget.dart';
import 'package:app1/tab_screen/home_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 55),
                child: Column(
                  children: [Expanded(child: HomeScreen())],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: BottomTabWidget(
                    onPress: (index) {
                      print(index);
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
