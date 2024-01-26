// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Count.dart';

class End_Page extends StatelessWidget {
  const End_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text( 'End_Page.dart' ),
          centerTitle: true,
        ), 
        body: Container(
          color: Colors.transparent,
          child: Center(
            child: ElevatedButton(
              child: Text( 
                '+1',
                style: TextStyle( fontSize: 48)
              ),
              onPressed: () {
                context.read<Count>().increment();
                return;
              },
            ),  
          ),  
        ),
      ),
    );
  }
}