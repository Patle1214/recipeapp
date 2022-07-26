import 'package:flutter/material.dart';
import 'dart:math';
import 'package:recipeapp/screens/recipe2.dart';
import 'package:recipeapp/screens/recipe3.dart';
    class Recipe1 extends StatelessWidget {
      Recipe1({Key? key}) : super(key: key);
      Random random = Random();
      final String title = "Carbonara Kimchi Udon";
      @override
      Widget build(BuildContext context) {
        int randomNumber = random.nextInt(2);
        return Scaffold(
          body:SingleChildScrollView(
          child: Column(
              children: [
          Container(
          width: MediaQuery.of(context).size.width*1,
            height: MediaQuery.of(context).size.height*.45,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Kimchi.jpg'), fit:BoxFit.cover )),
            ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Carbonara Kimchi Udon", style: TextStyle(fontSize:35, color:Colors.black,fontWeight: FontWeight.w600)), SizedBox(height:2,),
                SizedBox(height: 15),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                Text("Ingredients", style: TextStyle(fontSize:25, color:Colors.black, fontWeight: FontWeight.w400)),

                ]
          ),

                Text("3 ounces pancetta or bacon (cut into ¼-inch strips)",),
                Text("2 large egg yolks"),
                Text("1 large egg"),
                Text("½ cup Parmesan cheese plus extra for serving (grated)"),
                Text("1 tablespoon extra-virgin olive oil"),
                Text("¾ cup kimchi (finely chopped, divided)"),
                Text("8 ounces bucatini or spaghetti"),
                Text("salt"),
                Text("Fresh black pepper"),
                SizedBox(height: 25),
              ],
            ),
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
                        MaterialPageRoute(builder: (context) => Recipe2()),
                      );
                    }
                    if (randomNumber == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Recipe3()),
                      );
                    }
                  },
                  child: Text("Different Random Recipe", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
                )
              ],

          )
          )
        );
      }
    }