
import 'package:fitnesstracker/screen/dashboard.dart';
import 'package:fitnesstracker/screen/login.dart';
import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<Settings> {
  
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
    child:Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
         children: <Widget>[
       
       Container(
         decoration: BoxDecoration(  
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))  
        ),
         child: Padding(
           padding: const EdgeInsets.only(top:60,left: 20,bottom: 10),
           child: Row(
             children: [
               Container(
                 
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.only(right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/propic.jpg',
                        ),
                      ),
                    ),
                    Text(
                    'M Mondal',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
             ],
           ),
         ),
       ),

          
         
        
        Container(
          decoration: BoxDecoration(  
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))  
        ),
          child: ListTile(
            leading: Icon(Icons.home,color: Theme.of(context).primaryColor,),
            title: Text('Home',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontStyle: FontStyle.italic,
                    fontSize: 20)),
            trailing: Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor,),
            onTap: () {
             Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      )); 
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(  
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))  
        ),
          child: ListTile(
            leading: Icon(Icons.notifications,color: Theme.of(context).primaryColor,),
            title: Text('Notification',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontStyle: FontStyle.italic,
                    fontSize: 20)),
            trailing: Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor,),
            onTap: () {
              
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(  
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))  
        ),
          child: ListTile(
            leading: Icon(Icons.security,color: Theme.of(context).primaryColor,),
            title: Text('Privacy',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontStyle: FontStyle.italic,
                    fontSize: 20)),
            trailing: Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor,),
            onTap: () {
              
            },
          ),
        ),
        
        Container(
          decoration: BoxDecoration(  
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))  
        ),
          child: ListTile(
            leading: Icon(Icons.lock,color: Theme.of(context).primaryColor,),
            title: Text(
              'Logout',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,fontStyle: FontStyle.italic, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward, color: Theme.of(context).primaryColor,),
            onTap: () async {
              /* bool signoutSuccess = await AuthProvider().logOut();

              if (signoutSuccess)*/
              Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
              /*  else {
                print("Error in SignOut.");
              }*/
            },
          ),
        ),
      ]),
    )
    );
  }

  Widget imagepostUI(String image) {
    return Container(
        height: 180,
        width: 180,
        child: CircleAvatar(
          child: Image.network(image, fit: BoxFit.fill),
        ));
  }
}
