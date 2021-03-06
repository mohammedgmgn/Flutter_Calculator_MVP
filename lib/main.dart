import 'package:flutter/material.dart';
import 'package:tip_calculator/CalculaterPresenter.dart';
import 'package:tip_calculator/CalculaterViews.dart';

void main() {
  runApp(new MaterialApp(title: 'Tip Calculator', home: new TipCalculator()));
}

class TipCalculator extends StatelessWidget implements CalculatorViews {
  double billAmount = 0.0;
  double tipPercentage = 0.0;
  double num1 = 0.0;
  double num2 = 0.0;
  double result = 0.0;
  CalcPresenter calcPresenter;

  @override
  Widget build(BuildContext context) {
    TextField num1One = new TextField(
        decoration: new InputDecoration(labelText: "Num 1", hintText: "0.0"),
        keyboardType: TextInputType.number,
        onChanged: (String value) {
          try {
            num1 = double.parse(value);
          } catch (exception) {
            num1 = 0.0;
          }
        });

    TextField num1Tow = new TextField(
        decoration: new InputDecoration(labelText: "Num 2", hintText: "0.0"),
        keyboardType: TextInputType.number,
        onChanged: (String value) {
          try {
            num2 = double.parse(value);
          } catch (exception) {
            num2 = 0.0;
          }
        });


    Container SummationBtn=   new Container(
        margin: const EdgeInsets.only(top: 30.0),
        child:new RaisedButton(
          child: new Text("Summation"),

        onPressed: () {
          calcPresenter = new CalcPresenter(num1,num2, this, context);
          calcPresenter.plus();
        }
        ));
    Container SubBtn=   new Container(
        margin: const EdgeInsets.only(top: 60.0),
        child:new RaisedButton(
            child: new Text("Subtraction"),
            onPressed: () {
              calcPresenter = new CalcPresenter(num1, num2, this, context);
              calcPresenter.minus();
            }
        ));
    Container MultiBtn=   new Container(
        margin: const EdgeInsets.only(top: 60.0),
        child:new RaisedButton(
            child: new Text("Multiplication"),
            onPressed: () {
              calcPresenter = new CalcPresenter(num1, num2, this, context);
              calcPresenter.Multiplication();
            }
        ));
    Container DivsionBtn=   new Container(
        margin: const EdgeInsets.only(top: 60.0),
        child:new RaisedButton(
            child: new Text("Division"),
            onPressed: () {
              calcPresenter = new CalcPresenter(num1, num2, this, context);
              calcPresenter.Divition();
            }
        ));



    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(children: [num1One, num1Tow, SummationBtn,SubBtn,MultiBtn,DivsionBtn]));

    AppBar appBar = new AppBar(title: new Text("Calculator"));

    Scaffold scaffold = new Scaffold(appBar: appBar, body: container);
    return scaffold;
  }

  @override
  void showResult(double result, BuildContext context) {
    AlertDialog dialog = new AlertDialog(content: new Text("Result is : $result"));
    // Show dialog
    showDialog(context: context, child: dialog);
    calcPresenter.ResetResult();
  }
}
