import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key, required this.bmi,required this.gender,required this.age });
  final double bmi;
  final String? gender;
  final int? age;
 

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String status = 'NORMAL';
  String position = '';
  Color? statuscolor;
 
  @override
  void initState() {
    // TODO: implement initState
    if (widget.bmi > 24.5) {
      status = 'HIGH';
    } else if (widget.bmi > 24.5) {
      status = 'NORMAL';
    } else if (widget.bmi > 20) {
      status = 'NORMAL';
    } else if (widget.bmi > 18.5) {
      status = 'NORMAL';
    } else {
      status = 'VERY LESS';
    }

    if (widget.bmi > 24.5) {
      statuscolor = Colors.red;
    } else if (widget.bmi > 24.5) {
      statuscolor = Colors.green;
    } else if (widget.bmi > 10) {
      statuscolor = Colors.red;
    } else if (widget.bmi > 18.5) {
      statuscolor = Colors.green;
    } else {
      statuscolor = Colors.white;
    }

    if (widget.bmi > 24.5) {
      position = "YOU have a high body weight.decrease your body weight";
    } else if (widget.bmi > 24.5) {
      position = "you have a normal body weight.good job";
    } else if (widget.bmi > 10) {
      position = "you have a normal body weight.good job";
    } else if (widget.bmi > 18.5) {
      position = "you have a normal body weight.good job";
    } else {
      position = "YOU have a low body weight.increase your body weight";
    }


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111328),
      appBar: AppBar(
        backgroundColor: const Color(0xff111328),
        title: const Row(
          children: [
            SizedBox(
              width: 35,
            ),
            Text(
              'BMI CALCULATOR',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'YOUR RESULT',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "You are:",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                 widget. gender.toString(),
                  style: const TextStyle(fontSize: 25, color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "AGE:",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                  widget.age.toString(),
                  style: const TextStyle(fontSize: 25, color: Colors.orange),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      status.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          color: statuscolor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      widget.bmi.toStringAsFixed(2),
                      style: const TextStyle(
                          fontSize: 75,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      position.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
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
              child: const Center(
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
