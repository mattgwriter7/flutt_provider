// ignore_for_file: camel_case_types

import 'package:flutt_provider/Count.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Start_Page extends StatelessWidget {
  const Start_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text( 'Start_Page.dart' ),
          centerTitle: true,
        ), 
        body: Container(
          width: double.infinity,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children : 
              [ 
                ElevatedButton(
                  child: Text( 'Counter Page >>' ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('Counter_Page');         
                    return;
                  },
                ),
                ElevatedButton(
                  child: Text( 'reset' ),
                  onPressed: () {
                    context.read<Count>().reset();        
                    return;
                  },
                ), 
            ],
          ),  
        ),
      ),
    );
  }
}