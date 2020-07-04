import 'package:fitnesstracker/screen/dashboard.dart';
import 'package:fitnesstracker/screen/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=> HomePageState();
   }
class HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
   child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child:Column(children: [
              Image.network('https://png.pngtree.com/png-clipart/20190617/original/pngtree-fitness-exercise-increase-flexibility-yoga-clothing-png-image_3892529.jpg'),
              Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Text('Your Personal',style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height:5),
                  Text(
                  'Fitness Trainer'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 40,
                    color: Theme.of(context).primaryColor,
                    
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
              
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
             MaterialButton(
               shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ),
                    );
                  },
                 
                  height: 40,
                  minWidth: 200,
                  child: Text(
                    'Get Started'.toUpperCase(),
                    style: TextStyle(
                    fontSize: 15
                  ),
                  ),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                ),
                
              ],
            ),
          ),
        ),
      ),
   ),
    );
    
  }
  
}
