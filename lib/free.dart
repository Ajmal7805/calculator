import 'package:calculator/freeup.dart';
import 'package:flutter/material.dart';

import 'calculator1.dart';


class Free extends StatefulWidget {
  const Free({super.key});

  @override
  State<Free> createState() => _FreeState();
}

class _FreeState extends State<Free> {
  double slidervalue =10;
  String? gender;
  int weight =70;
  int age =18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111328),
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        backgroundColor: Color(0xff111328),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(onTap: () {
                        if(gender=='male'){gender=null;}
                        else{gender='male';}
                        setState(() {
                          
                        });
                      },
                        child: Container(
                                          color: gender=='male'? Colors.white60 :Colors.white12,
                                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male,color: Colors.blue,size: 80,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("male",style: TextStyle(fontSize: 30,color: Colors.white),)
                        ],
                                          ),
                                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InkWell(onTap: () {
                        if(gender=="female"){gender=null;}else{gender='female';}
                        setState(() {
                          
                        });
                      },
                        child: Container(
                                          color: gender=='female'? Colors.white60:Colors.white12,
                                           child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female,color: Colors.pink,size: 80,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("female",style: TextStyle(fontSize: 30,color: Colors.white),)
                        ],
                                          ),
                                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              color: Colors.white12,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("height",style: TextStyle(fontSize: 20,color: Colors.white30),),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(slidervalue.toStringAsFixed(2),style: TextStyle(fontSize: 50,color: Colors.white),),
                      Text("cm",style: TextStyle(fontSize: 20,color: Colors.white30),),
                    ],
                  ),
                  Slider(value: slidervalue,
                  max: 200,
                  min: 10,
                  activeColor: Colors.red

                  , onChanged: (value) {
                    setState(() {
                      slidervalue=value;
                    });
                  },)

                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.white12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("weight",
                        style: TextStyle(fontSize: 20,color: Colors.white30),),
                         Text(weight.toString(),
                        style: TextStyle(fontSize: 60,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(onTap: () {
                              weight=weight-1;
                              setState(() {
                                
                              });
                            },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Center(
                                  child: Icon(Icons.remove,color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            InkWell(
                              onTap: () {
                                weight=weight+1;
                                setState(() {
                                  
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Center(
                                  child: Icon(Icons.add,color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.white12,
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("age",
                        style: TextStyle(fontSize: 20,color: Colors.white30),),
                         Text(age.toString(),
                        style: TextStyle(fontSize: 60,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(onTap: () {
                              age=age-1;
                              setState(() {
                                
                              });
                            },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Center(
                                  child: Icon(Icons.remove,color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),InkWell(onTap: () {
                              age=age+1;
                              setState(() {
                                
                              });
                            },
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Center(
                                  child: Icon(Icons.add,color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                    
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                double heightinmtr = slidervalue/100;
          double body =weight/(heightinmtr*heightinmtr);
print(body);

                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Freeup(body: body,gender: gender,age: age,);
                    },
                  ));
              },
              height: 50,
              minWidth: double.infinity,
              color: Colors.red,
              child: Text(
                "Calculate",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
