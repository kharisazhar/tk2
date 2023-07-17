import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tk2/provider/home_provider.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Giofani";
    return Center(
      child: Text(
        'Hello ${context.watch<HomeProvider>().homeData.name} selamat Datang',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
