import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'ne.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  int height = 150;
  int weight = 50;
  int age = 20;
  bmi() {}
  @override
  Widget build(BuildContext context) {
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
            //appBar: AppBar(),
            body: SafeArea(
                child: Center(
          child: Card(
            //padding: EdgeInsets.all(15),
            child: Card(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'BMI Calculator',
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                              child: IconButton(
                            color: Colors.cyanAccent,
                            iconSize: 75,
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.mars),
                          )),
                        ),
                        Expanded(
                            child: Card(
                                child: IconButton(
                          color: Colors.pinkAccent,
                          iconSize: 75,
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.venus),
                        ))),
                        Column(
                          children: [Text('')],
                        )
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Male',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                        Expanded(
                            child: Text(
                          'Female',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Text('Male'),
                    Text('Input your Height in cm'),
                    Row(
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.w900),
                        ),
                        Card(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbColor: Colors.yellow[300],
                              activeTrackColor: Colors.blueGrey,
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              onChanged: (val) {
                                setState(() {
                                  height = val.toInt();
                                });
                              },
                              max: 200,
                              min: 120,
                            ),
                          ),
                          //     child: Slider(
                          //   value: height.toDouble(),
                          //   onChanged: (val) {
                          //     setState(() {
                          //       // height = val.toInt();
                          //     });
                          //   },
                          //   max: 200,
                          //   min: 120,
                          // )
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Card(
                          child: Center(
                            child: Padding(
                                padding: EdgeInsets.all(15),
                                child: Flexible(
                                  child: MaterialButton(
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    child: Expanded(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    weight++;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add_circle,
                                                  size: 40,
                                                )),
                                          ),
                                          Flexible(
                                            child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    weight--;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.remove_circle,
                                                  size: 40,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        )),
                        // Text('weight:$weight kg'),

                        Expanded(
                            child: Card(
                          child: Expanded(
                              child: Card(
                            child: Center(
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Flexible(
                                    child: MaterialButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex: 5,
                                              child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      age++;
                                                    });
                                                  },
                                                  icon: Icon(
                                                    Icons.add_circle,
                                                    size: 40,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Flexible(
                                              flex: 5,
                                              child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      age--;
                                                    });
                                                  },
                                                  icon: Icon(
                                                    Icons.remove_circle,
                                                    size: 40,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                          )),
                        )),
                      ],
                    ),
                    //SizedBox(
                    //height: 15,
                    //),
                    // Flexible(
                    Row(
                      children: [
                        Card(
                          child: Text('weight:$weight kg',
                              style: TextStyle(
                                fontSize: 25,
                                //         overflow: TextOverflow.ellipsis)),
                              )),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Card(
                          child: Text('Age:$age',
                              style: TextStyle(
                                fontSize: 25,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.amber),
                            overlayColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          ),
                          onPressed: () {
                            setState(() {
                              Bmi(height, weight);
                              Navigator.pushNamed(context, '1');
                              // new Call(weight, height);
                            });
                            // new Call(weight,height);
                          },
                          child: Text('Calculate BMI')),
                    )
                  ]),
            ),
          ),
        ))));
  }
}
