import 'package:fitnesstracker/screen/home.dart';
import 'package:fitnesstracker/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  String _name;
  String _email;
  String _password;
  String _confirmpassword;
  bool _obscureText = true;

  
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).primaryColor,
                    Colors.deepPurpleAccent[700]
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Icon(Icons.person,
                  //     size: 90,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 32,
                          right: 32
                        ),
                        child: Text('SIGNUP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 42),
              child: Column(
                children: <Widget>[
                       Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 15, right: 15),
                          child: Form(
                            key: formKey,
                            child: Column(children: [
                              TextFormField(
                                controller: name,
                                decoration: InputDecoration(
                                  labelText: 'Enter Your Name',
                                  icon: Icon(
                                    Icons.person,
                                    color:Colors.blueGrey,
                                  ),
                                ),
                                validator: (val) =>
                                    val.length < 8 ? 'Not a valid Name.' : null,
                                onSaved: (val) => _name = val,
                              ),
                              TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                    labelText: 'Enter Your Email',
                                    icon: Icon(Icons.email, color: Colors.blueGrey)),
                                validator: (val) => !val.contains('@')
                                    ? 'Not a valid email.'
                                    : null,
                                onSaved: (val) => _email = val,
                              ),
                              TextFormField(
                                obscureText: _obscureText,
                                controller: password,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    icon: Icon(Icons.lock_outline,
                                        color: Colors.blueGrey),
                                    suffixIcon: new GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      child: new Icon(_obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                    )),
                                validator: (val) => val.length < 5
                                    ? 'Password too short.'
                                    : null,
                                onSaved: (val) => _password = val,
                              ),
                              TextFormField(
                                obscureText: _obscureText,
                                controller: confirmpassword,
                                decoration: InputDecoration(
                                    labelText: ' Confirm Password',
                                    icon: Icon(Icons.lock_outline,
                                        color: Colors.blueGrey),
                                    suffixIcon: new GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      child: new Icon(_obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                    )),
                                validator: (val) => val.length < 5
                                    ? 'Password too short.'
                                    : null,
                                onSaved: (val) => _password = val,
                              ),
                            ]),
                          ),
                        ),
                  
              SizedBox(height:60),
                  FlatButton(
                    onPressed:() {
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    ); 

                    },
                     child: Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width/2.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).primaryColor
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child: Center(
                        child: Text('Register'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                                width: 180,
                                height: 35  ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: FlatButton(
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius:
                                  //       new BorderRadius.circular(40.0),
                                  // ),
                                  //color:Theme.of(context).primaryColor,
                                  onPressed: () {
                                     Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    ); 
                                  },
                                  child: Text(' Go To LoginPage',
                                      style: TextStyle(
                                          color:Theme.of(context).primaryColor,
                                          //fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}