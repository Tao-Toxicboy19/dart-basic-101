void main() {
  app();
}

void app() {
  myFunctionV1();
}

void myFunctionV1() {
  String stdName = "thewarat";
  print("I am ${stdName} in my function");
  myFunctionV2();
}

void myFunctionV2() {
  double myMoney = 999.99;
  print("I have money = ${myMoney}");
}
