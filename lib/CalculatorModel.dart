class Caclulator{
  double num1=0.0;
  double num2=0.0;
  double result=0.0;
  Caclulator(double num1,double num2){
    this.num1=num1;
    this.num2=num2;
  }
  void Summation () {
    result =num1+num2;
  }
  void Subtraction () {
    result =num1-num2;
  }
  void Multiblication () {
    result =num1*num2;
  }
  void Divsion () {
    if(num2==0)
      return;
    result =num1/num2;
  }


  void Rest () {
    result =0.0;
  }

  double getResult(){
    return result;
  }


}