// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class End_Page extends StatelessWidget {
  const End_Page({super.key});

  // (this page) variables
  static const String filename = 'End_Page.dart';  

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
              child: Text( '<< Counter' ),
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