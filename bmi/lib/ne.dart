import 'package:flutter/material.dart';

double result = 0;
double bmi = 0;
String s = "normal";
int w = 0, h = 0;

int Bmi(int height, int weight) {
  result = (weight / (height * height)) * 10000;

  return 3;
}

class Call {
  //[weight (kg) / height (cm) / height (cm)] x 10,000
  //int weight, height;
  // Call(this.weight, this.height) {}

  //Call call = new Call(3, 4);
  int Bmi() {
    //result = (weight / (height * height)) * 10000;

    return 3;
  }
//h=height;

/*
BMI	Weight Status
Below 18.5	Underweight
18.5 – 24.9	Normal or Healthy Weight
25.0 – 29.9	Overweight
30.0 and Above	Obese



 */

}

String suggestion() {
  bmi = result;
  if (bmi < 18.5) {
    s = "Underweight";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    s = "Normal or Healthy Weight";
  } else if (bmi >= 25.0 && bmi <= 29.9) {
    s = "Overweight";
  } else {
    s = "Obese";
  }
  return s;
}

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  bool t = false;
  @override
  void initState() {
    t = false;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    suggestion();

    //  Call c = Call(1, 2);
    //c.suggestion();
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          /* light theme settings */
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          /* dark theme settings */
        ),
        themeMode: ThemeMode.dark,
        home: Scaffold(
            drawer: ElevatedButton(
                onPressed: () {
                  //AdaptiveTheme.of(context).setDark();
                  setState(() {});
                },
                child: Text('Dark mode')),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(45.0),
                child: Card(
                  child: Column(
                    children: [
                      Text(
                        'Your BMI is $result',
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'you are $s',
                        style: TextStyle(fontSize: 25, color: Colors.cyan),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
