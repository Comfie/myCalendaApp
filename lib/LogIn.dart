import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/RegisterPage.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(title: 'Calendar App',),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: EdgeInsets.all(20.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Image.asset('assets/calendar.jpg'),

            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  filled: false,
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Email Address',
                  fillColor: Colors.white70,

              ),
            ),

            SizedBox(height: 20.0,),


            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Password',
                  fillColor: Colors.white70

              ),

            ),
            SizedBox(height: 20.0,),

            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                onPressed: (){},
                color: Colors.lightBlue,
                child: Text('Log In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),

            ),


            SizedBox(height: 20.0,),

            //Allows you to detect clicks
            GestureDetector(
              onTap: (){

                //push will  clear all previous pages, while push replacement takes a parameter
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Register()));


              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Dont have an account?'),
                  Text('Sign Up Here',style: TextStyle(color: Colors.blueAccent),),

                ],),


            )








          ],


        ),




      ),




    );
  }
}