import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tk2/provider/home_provider.dart';

import 'homescreen/tabbar/tab_form.dart';
import 'homescreen/tabbar/tab_home.dart';
import 'homescreen/tabbar/tab_maps.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Align(
                alignment: Alignment.centerRight,
                child: Text(context.watch<HomeProvider>().homeData.name ?? '')),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_filled)),
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.pin_drop_sharp)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [TabHome(), TabForm(), TabMaps()],
          ),
        ));
  }
}
