void main() {
  app();
}

void app() {
  var listx = getList();
  print(listx);
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

// parameters and return type

String getName(String firstName, String lastName) {
  String fullName = firstName + lastName;
  return fullName.toUpperCase();
}

List<int> getList() {
  List<int> myNumber = [];

  for (var i = 0; i < 10; i++) {
    myNumber.add(i * 50);
  }

  return myNumber;
}
