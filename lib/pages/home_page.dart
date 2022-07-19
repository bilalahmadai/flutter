import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:matcher/matcher.dart';

class HomePage extends StatelessWidget {
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilal's App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            'I am Bilal, and i am $age year old',
            style: TextStyle(
              fontSize: 24,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
