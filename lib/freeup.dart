import 'package:flutter/material.dart';

class Freeup extends StatefulWidget {
  const Freeup({super.key,required this.body,required this.gender,required this.age});
  final double body;
  final String? gender;
  final int? age;
  
  @override
  
  
  State<Freeup> createState() => _FreeupState();
}

class _FreeupState extends State<Freeup> {   
  String status="norma";
  @override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111328),
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI CALCULATOR",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        backgroundColor: Color(0xff111328),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Your Result',style: TextStyle(fontSize: 40,color: Colors.white),),
              ],
            ),
            SizedBox(
              height: 30,
            ),Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('gender:',style: TextStyle(fontSize: 30,color: Colors.white),),
                        Text(widget.gender.toString(),style: TextStyle(fontSize: 30,color: Colors.blue),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age:',style: TextStyle(fontSize: 30,color: Colors.white),),
                        Text(widget.age.toString(),style: TextStyle(fontSize: 30,color: Colors.red),),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      status.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      widget.body.toStringAsFixed(2),
                      style: TextStyle(
                          fontSize: 75,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '1tvgyfghbgftrderyfygybghffdtfyggbyyvv',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              height: 50,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.red,
              child: Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
