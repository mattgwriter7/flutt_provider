// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Counter_Page extends StatelessWidget {
  const Counter_Page({super.key});

  // (this page) variables
  static const String filename = 'Counter_Page.dart';  

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
              child: Text( 'End Page >>' ),
              onPressed: () {
                Navigator.of(context).pushNamed('End_Page');         
                return;
              },
            ),  
          ),  
        ),
      ),
    );
  }
}