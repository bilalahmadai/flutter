import 'package:first_app/utilis/routes.dart';
import 'package:flutter/material.dart';

import 'package:matcher/matcher.dart';

import '../widgets/Drawer.dart';

class HomePage extends StatelessWidget {
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilal's 1st App"),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.orange),
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
      drawer: MyDrawer(),
    );
  }
}
