import 'package:flutter/material.dart';
import 'dart:math';
import 'package:recipeapp/screens/recipe2.dart';
import 'package:recipeapp/screens/recipe1.dart';
class Recipe3 extends StatelessWidget {
  Recipe3({Key? key}) : super(key: key);
  Random random = Random();
  final String title = "Pink Sauce Pasta";
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
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/pinkpasta.jpg'), fit:BoxFit.cover )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pink Sauce Penne", style: TextStyle(fontSize:35, color:Colors.black,fontWeight: FontWeight.w600)), SizedBox(height:2,),
                      SizedBox(height: 15),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Text("Ingredients", style: TextStyle(fontSize:25, color:Colors.black, fontWeight: FontWeight.w400)),

                          ]
                      ),

                      Text("300 g pasta of choice, I used penne",),
                      Text("2 tablespoon butter"),
                      Text("1 tablespoon olive oil"),
                      Text("1 small red onion, minced"),
                      Text("4 garlic cloves, minced"),
                      Text("1.5 cups tomato passata (or puree or sauce-not tomato paste)"),
                      Text("1 teaspoon dried basil"),
                      Text("1 chicken bouillon cube, crumbled"),
                      Text("pinch sugar"),
                      Text("salt and pepper to taste"),
                      Text("1/2 cup heavy cream"),
                      Text("1/2 cup milk"),
                      Text("1/3-1/2 cup shredded mozzarella cheese"),
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
                        MaterialPageRoute(builder: (context) => Recipe2()),
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