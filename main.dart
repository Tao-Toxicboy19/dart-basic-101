void main() {
  app();
}

void app() {
  // MyFunctionV3(523.22, 5454.111, "Hello");
  MyfunctionV5("Hello Prawit");
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

// parameters no return type

void MyFunctionV3(double x, double y, String z) {
  print("x + y = ${x + y}");
  print("z = ${z}");

  MyFunctionV4(x + y);
}

void MyFunctionV4(double sum) {
  print("Som of X + Y = ${sum}");
}

void MyfunctionV5(String name) {
  print("${name.toUpperCase()}");
}
