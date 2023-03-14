import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  TextEditingController weightcontroller = TextEditingController();
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('BMI'))),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: (20),
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Weight',
                    fillColor: Colors.grey[300],
                    focusColor: Colors.grey[300],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
                controller: weightcontroller,
              ),
              SizedBox(
                height: (20),
              ),
              TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Height',
                      fillColor: Colors.grey[300],
                      focusColor: Colors.grey[300],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  controller: heightcontroller),
              SizedBox(
                height: (20),
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Age',
                    fillColor: Colors.grey[300],
                    focusColor: Colors.grey[300],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
                controller: agecontroller,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${result.toString()}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    result = double.parse(weightcontroller.text) /
                        (double.parse(heightcontroller.text) *
                            double.parse(heightcontroller.text));
                    setState(() {});
                  },
                  child: Text('calculate')),
            ],
          ),
        ));
  }
}
