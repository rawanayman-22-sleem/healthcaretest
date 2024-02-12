import 'package:flutter/material.dart';
import 'package:healthcaretest/core/constants/color_helper.dart';



class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left:40,bottom: 10),
                  child: txt1(txt: "Sign",col:Colors.black,fs:40,ff: FontWeight.bold ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120,bottom: 20),
                  child: Text('Create Account',style: TextStyle(color:ColorHelper.mainColor,fontSize: 100,fontWeight: FontWeight.w100),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Name',
                      hintText: 'Enter name',
                      prefixIcon: Icon(Icons.person),
                      // suffixIcon: Icon(Icons.remove_red_eye_outlined),


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Phone',
                      hintText: 'Enter Phone',
                      prefixIcon: Icon(Icons.phone),
                      // suffixIcon: Icon(Icons.remove_red_eye_outlined),


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Email',
                      hintText: 'Enter email',
                      prefixIcon: Icon(Icons.email),
                      // suffixIcon: Icon(Icons.remove_red_eye_outlined),


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Passwoed',
                      hintText: 'Enter password',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(child: butt1(txt: 'Sign up',col: Colors.blueAccent,event: (){
                    setState(() {
                      Navigator.pop(context);

                      email.text='';
                      password.text='';
                    });},
                      fs: 20,Txtcol: Colors.white)),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}