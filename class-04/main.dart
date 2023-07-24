void main() {
  app();
}

app() {
  // adder(1, 2, 2, "hello");
  suntract(w: 20, x: 20, y: 10);
}

adder(int a, int b, int c, [String? x = "บวก"]) {
  print("${a + b + c} $x");
}

suntract({required int w, int x = 0, int y = 0}) {
  print(w - x - y);
}
