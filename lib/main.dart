import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ls21",
    home: Scaffold(
      appBar: AppBar(
        title: Text("richtext"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(20),
        child: Container(
          height: 400,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              color: Colors.grey[350]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, 2),
                        spreadRadius: 2,
                      )
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: newReg()),
              RichText(
                text: TextSpan(
                  text: "Dont have an account? ",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Sign up",
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.blueAccent,)
                    ),
                  ],
              ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}

Widget newReg() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        textforLabel("Email", ""),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 40,
          child: TextField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 25),
                  border: OutlineInputBorder())),
        ),
        SizedBox(
          height: 20,
        ),
        textforLabel("Password", "forgot password?"),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 40,
          child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder()
                  ),
          obscureText: true,
                  ),

        ),
        SizedBox(
          height: 20,
        ),
        
        SizedBox(
         width: double.infinity,
          child: ElevatedButton(
            onPressed: (){},  
            child: Text("Log in",
              style: TextStyle(fontSize: 20, color:  Colors.white),
          )
          ),
        )
      ],
    ),
  );
}

Widget textforLabel(String a, String b) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(a , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black,),),
    Text(b , style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.blueAccent,),),
    ],
  );
}
