void main() {
  app();
}

void app() {
  // myFunctionV6(x: 60, y: "Prayut", z: 626.212);
  // calculateSalary(
  //     eName: "Thewarat", salary: 20000, position: "manager", member: true);
  myList();
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

// null safety and named parameters

void myFunctionV6({int? x, String? y, double? z}) {
  print("my data ${x} ${y} ${z}");
}

void calculateSalary(
    {String eName = "",
    double salary = 0,
    String position = "",
    bool member = true}) {
  (salary >= 15000) ? salary = salary - 750 : salary = salary - 500;
  print("Salary = ${salary}");
  salary = (member) ? salary - (salary * 0.05) : salary;
  print("เงินเดือนหลังหัก กองทุน ${salary}");
  salary += position == "staff"
      ? 1500
      : position == "supervisor"
          ? 2000
          : position == "manager"
              ? 3000
              : 0;
  print("เงินเดือนรวม ${salary}");
}

void myList() {
  List<String> myFriend = ["Prawit", "Sutanan", "Koschakon", "Narongsak"];
  for (var name in myFriend) {
    print(name);
  }
  myFriend.forEach((String n) {
    print("เพื่อนฉันชื่อว่า ${friendName(n)}");
    (n == "Prawit") ? print("คนดีย์") : print("คนดีย์สอง");
  });
}

var friendName = (String name) {
  return name.toUpperCase();
};
