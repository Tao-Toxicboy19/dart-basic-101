void main() {
  app();
}

void app() {
  int age = getAge();
  print(age);
  print("My Age ${getAge()}");
  print(getName());
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

// return type

int getAge() {
  return 15;
}

String getName() {
  String MyName = "Hello John Onyx";
  return MyName;
}
