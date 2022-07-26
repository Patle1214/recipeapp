import 'package:flutter/material.dart';
import 'dart:math';
import 'package:recipeapp/screens/recipe1.dart';
import 'package:recipeapp/screens/recipe3.dart';
class Recipe2 extends StatelessWidget {
  Recipe2({Key? key}) : super(key: key);
  Random random = Random();
  final String title = "Basil Pesto Pasta";
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
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/pesto.jpg'), fit:BoxFit.cover )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Basil Pesto Pasta", style: TextStyle(fontSize:35, color:Colors.black,fontWeight: FontWeight.w600)), SizedBox(height:2,),
                      SizedBox(height: 15),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Text("Ingredients", style: TextStyle(fontSize:25, color:Colors.black, fontWeight: FontWeight.w400)),

                          ]
                      ),
                      Text("For Pasta:", style: TextStyle(fontSize:18,fontWeight:FontWeight.w400)),

                      Text("200 gram penne pasta (approx 2 Cups)",),
                      Text("6 Cup water"),
                      Text("1 tablespoon salt"),
                      Text("For Basil Pesto:", style: TextStyle(fontSize:18,fontWeight:FontWeight.w400)),
                      Text("½ Cup walnuts"),
                      Text("¼ Cup grated parmesan cheese"),
                      Text("¼ Cup extra virgin olive oil"),
                      Text("4 – 6 garlic cloves"),
                      Text("Salt and pepper to taste"),
                      Text("Other:", style: TextStyle(fontSize:18,fontWeight:FontWeight.w400)),
                      Text("1 Cup cherry tomato, cut into halves"),
                      Text("2 – 4 tablespoon heavy cream (optional)"),
                      Text("1 tablespoon coarsely chopped walnuts"),

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
                        MaterialPageRoute(builder: (context) => Recipe1()),
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