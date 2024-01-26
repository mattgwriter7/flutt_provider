// ignore_for_file: camel_case_types

import 'package:flutt_provider/Count.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter_Page extends StatelessWidget {
  const Counter_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text( 'Counter_Page.dart' ),
          centerTitle: true,
        ), 
        body: Container(
          width: double.infinity,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text( 
                '"${ context.watch<Count>().show_value }"',
                style: TextStyle( fontSize: 48)
              ),
              ElevatedButton(
                child: Text( 'End Page >>' ),
                onPressed: () {
                  Navigator.of(context).pushNamed('End_Page');         
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