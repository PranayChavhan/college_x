import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
          backgroundColor: Colors.green[700],
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ))),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 80),),
              Container(

                child: Text(
                  "Let's Get Started!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                color: Colors.green[700],
                padding: EdgeInsets.only(left: 89.5,right: 89.5,),

              ),
              Container(
                child: Text(
                  "Create an account to CollageX to get all features",
                  style: TextStyle(

                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                color: Colors.green[700],
                padding: EdgeInsets.only(left: 42.5,right: 42.5,top: 10),
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green[700],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(36),
                    )
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const SizedBox(
                    width: 350,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Name',
                          hintStyle: TextStyle(color: Colors.green),
                          label: Text('Name',style: TextStyle(color: Colors.green),)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Email',
                      hintStyle: TextStyle(color: Colors.green),
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.green),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Number',
                      hintStyle: TextStyle(color: Colors.green),
                      label: Text('Phone Number',style : TextStyle(color: Colors.green))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(color: Colors.green),
                      label: Text('Password',style : TextStyle(color: Colors.green))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                      errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      border: OutlineInputBorder(),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.green),
                      label: Text('Confirm password',style: TextStyle(color: Colors.green),)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style : ElevatedButton.styleFrom(primary: Colors.green[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      )
                  ),
                  child: const Text('Sign in'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                  TextButton(onPressed: () {
                    Navigator.pop(context, '/login');
                  }, child: Text('Log in',style: TextStyle(
                    color: Colors.green[700],
                    fontSize: 15,
                  ),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
