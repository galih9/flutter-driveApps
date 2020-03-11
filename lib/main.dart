import 'package:flutter/material.dart';
import 'second_page.dart';
import 'settings_page.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.flash_on), text: 'Perfomance'),
              Tab(
                icon: Icon(Icons.sync),
                text: 'Infinite Proces',
              ),
              Tab(icon: Icon(Icons.storage), text: 'Data Transfer')
            ]),
            title: Text('Isolate Example'),
          ),
          body: TabBarView(children: [
            HomePage(),
            SecondPage(),
            SettingsPage()
          ]),
          
          )),
    );
  }
}
