import 'package:flutter/material.dart';
import 'dart:math';
import 'package:recipeapp/screens/recipe1.dart';
import 'package:recipeapp/screens/recipe2.dart';
import 'package:recipeapp/screens/recipe3.dart';
class HomeScreen extends StatelessWidget {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(3);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/food.jpg'), fit: BoxFit.fill),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:20),
            height: MediaQuery.of(context).size.height*.3,
            decoration: BoxDecoration(color: Colors.white.withAlpha(150)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Need a new recipe?", style: TextStyle(fontWeight: FontWeight.bold,fontSize:30)),
                SizedBox(
                  height: 45,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      elevation: 10,
                      shape: const BeveledRectangleBorder(),
                      minimumSize: Size(120,70),
                    ),
                    onPressed: () {
                      if (randomNumber == 0){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Recipe1()),
                        );
                      }
                      if (randomNumber == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Recipe2()),
                        );
                      }
                      if (randomNumber == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Recipe3()),
                        );
                      }
                    },
                    child: Text("Random Recipe", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
          )
              ]
            ),
          ),
        )
      ),
    );
  }
}