// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Start_Page extends StatelessWidget {
  const Start_Page({super.key});

  // (this page) variables
  static const String filename = 'Start_Page.dart';  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text( filename ),
          centerTitle: true,
        ), 
        body: Container(
          color: Colors.transparent,
          child: Center(
            child: ElevatedButton(
              child: Text( 'Counter Page >>' ),
              onPressed: () {
                Navigator.of(context).pushNamed('Counter_Page');         
                return;
              },
            ),  
          ),  
        ),
      ),
    );
  }
}