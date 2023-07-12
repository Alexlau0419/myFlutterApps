import 'package:flutter/material.dart';
import 'package:my_flutter_apps/tab1.dart';
import 'package:my_flutter_apps/tab2.dart';
import 'package:my_flutter_apps/tab3.dart';
import './drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.airline_seat_flat)),
                Tab(icon: Icon(Icons.cell_wifi)),
                Tab(icon: Icon(Icons.remember_me)),
              ],
            ),
          ),
          drawer: const MyDrawer(),
          body: const TabBarView(
            children: <Widget>[
              Tab1(),
              Tab2(),
              Tab3(),
            ],
          )),
    );
  }
}