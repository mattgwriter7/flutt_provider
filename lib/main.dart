import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Start_Page.dart';
import 'Counter_Page.dart';
import 'End_Page.dart';

import 'Count.dart';      // this is the Count() provider model 

void main() {
runApp( MultiProvider (
  providers: [ ChangeNotifierProvider(create: (_) => Count()),],
  child: MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: 'Start_Page',
      routes: {
        'Start_Page': (context) => const Start_Page(),
        'Counter_Page': (context) => const Counter_Page(),
        'End_Page': (context) => const End_Page(),
      },
    );
  }
}