void main() {
  app();
}

app() {
  // adder(1, 2, 2, "hello");
  // suntract(w: 20, x: 20, y: 10);
  // showdata(name: "Prayut", studentId: "123456", age: 20, nickName: "Tao");
  // print(check(weight: 200));
  // (check(weight: 200)) ? print("ไอ้อ้วน") : print("เบิ่งดี");
  // print(createList());
  String fullName(String firstname, String lastname) {
    return (firstname + lastname).toUpperCase();
  }

  // print(fullName(firstname: "Prayut", lastname: "Chanocha"));

  // List<int> myScore = [70, 55, 65, 80];
  // myScore.forEach((int m) {
  //   // print("My Score ${m}");
  //   (m >= 70) ? print("Nice one Guys ${m}") : print("Noob Guys ${m}");
  // });

  List<String> myFriend = ['john', 'tayler', 'david'];
  myFriend.forEach((element) {
    print(fullName("${element} ", "hello"));
  });
}

adder(int a, int b, int c, [String? x = "บวก"]) {
  print("${a + b + c} $x");
}

suntract({required int w, int x = 0, int y = 0}) {
  print(w - x - y);
}

showdata(
    {String? name,
    required String studentId,
    int? age,
    required String nickName}) {
  print("StudenId : ${studentId}");
  print("Name : ${name}");
  print("Nickname : ${nickName}");
  print("Age : ${age}");
}

bool check({int? weight}) {
  bool fat = (weight! >= 75) ? true : false;
  return fat;
}

List<int> createList() {
  List<int> a = [1, 2, 3, 4, 5];
  return a;
}
