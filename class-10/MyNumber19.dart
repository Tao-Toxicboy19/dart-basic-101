void main() {
  var m1 = MyNumber();
  m1.showNumber(10);
  var m2 = MyNumberV2();
  m2.showNumber(400);
  var m3 = MyNumberV3();
  m3.showNumber(20);
  m1 = MyNumberV3();
  m1.showNumber(10);
}

class MyNumber {
  showNumber(int x) => print('class Number x<<=>>${x}');
}

class MyNumberV2 extends MyNumber {
  @override
  showNumber(int x) {
    print('Class Number2 x<<=>>${x}');
  }
}

class MyNumberV3 extends MyNumberV2 {
  @override
  showNumber(int x) {
    print('Class Number3 x<<=>>${x * x * x}');
  }
}
