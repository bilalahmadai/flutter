import 'package:first_app/utilis/routes.dart';
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
        title: Text("Bilal's 1st App"),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              'I am bilal, and i am $age year old',
              style: TextStyle(
                fontSize: 24,
                color: Colors.deepOrange,
              ),
            ),
          ),
          Material(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(50),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                child: Icon(Icons.arrow_back),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(),
    );
  }
}
