import 'package:calculator/calculator1.dart';
import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  double slidervalue = 50;
  String? gender;
  int weight = 72;
  int AGE = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111328),
      appBar: AppBar(
        backgroundColor: const Color(0xff111328),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          InkWell(onTap: () {
            slidervalue=slidervalue=0;
            setState(() {
              
              
            });
          },
            child: const Icon(
              Icons.replay,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (gender == 'male') {
                          gender = null;
                        } else {
                          gender = 'male';
                        }
                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          color: gender == 'male'
                              ? Colors.white10
                              : const Color(0xff0a0e21),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, color: Colors.blue, size: 60),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "male",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.white60),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (gender == 'female') {
                          gender = null;
                        } else {
                          gender = 'female';
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: gender == 'female'
                              ? Colors.white10
                              : const Color(0xff0a0e21),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, color: Colors.pink, size: 60),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "female",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.white60),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff0a0e21)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: TextStyle(fontSize: 20, color: Colors.white60),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          slidervalue.toStringAsFixed(2),
                          style: const TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(fontSize: 15, color: Colors.white60),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Slider(
                      value: slidervalue,
                      max: 200,
                      min: 50,
                      activeColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          slidervalue = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff0a0e21),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white60),
                          ),
                          Text(
                            weight.toString(),
                            style: const TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    print("object");
                                    weight = weight - 1;
                                    setState(() {});
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 17,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  print("object");
                                  weight = weight + 1;
                                  setState(() {});
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 17,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      height: 180,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0xff0a0e21),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white60),
                          ),
                          Text(
                            AGE.toString(),
                            style: const TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    print("object");
                                    AGE = AGE - 1;
                                    setState(() {});
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 17,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  print("object");
                                  AGE = AGE + 1;
                                  setState(() {});
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 17,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                double heightinmtr = slidervalue / 100;
                double bmi = weight / (heightinmtr * heightinmtr);

                print(bmi);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Calculator(
                      bmi: bmi,
                      gender: gender,
                      age: AGE,
                    );
                  },
                ));
              },
              child: Container(
                height: 70,
                width: double.infinity,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
