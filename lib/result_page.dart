import 'package:bmi/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'calculate_bmi.dart';

class Result extends StatelessWidget
{
  final String calculation;
  final String result;
  final String Interpreter;


  Result({@required this.calculation,@required this.result,@required this.Interpreter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('BMI Calculator'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReuseableCard(
                  color: activecolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text(
                            result.toUpperCase(),
                            style: kResult,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          calculation,
                          style: ktextResult,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          Interpreter,
                          style: kResultDesc,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                title: 'Recalculate Your BMI',
              )
            ],
          ),
        ),
      ),
    );
  }
}
