import 'package:afg/utils/constants.dart';
import 'package:flutter/material.dart';

import 'desktopbody.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
      //  "/fRclient":(context) => FormulaireReservationClient()
      },

      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
    title: const Text('Tabbed AppBar'),
    bottom: TabBar(
    isScrollable: true,
    tabs: choices.map((Choice choice) {
    return Tab(
    text: choice.title,
    icon: Icon(choice.icon),
    );
    }).toList(),
    ),
    ),

    body: DesktopBody(),//Reservation(),//ClientList(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
