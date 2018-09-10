import 'package:flutter/cupertino.dart';
import 'package:tip_calculator/CalculaterViews.dart';
import 'package:tip_calculator/CalculatorModel.dart';
import 'package:tip_calculator/PresenterIntrface.dart';

class CalcPresenter implements PresnterIntrface {
  Caclulator calculatorModel;
  CalculatorViews views;
  BuildContext context;

  CalcPresenter(double num1, double num2, CalculatorViews calculatorViews,
      BuildContext context) {
    calculatorModel = new Caclulator(num1, num2);
    this.views = calculatorViews;
    this.context = context;
  }

  @override
  void Divition() {
    calculatorModel.Divsion();
    views.showResult(calculatorModel.getResult(), context);
  }

  @override
  void Multiplication() {
    calculatorModel.Multiblication();
    views.showResult(calculatorModel.getResult(), context);
  }

  @override
  void minus() {
    calculatorModel.Subtraction();
    views.showResult(calculatorModel.getResult(), context);
  }

  @override
  void plus() {
    calculatorModel.Summation();
    views.showResult(calculatorModel.getResult(), context);
  }

  @override
  void ResetResult() {
    calculatorModel.Rest();
  }
}
