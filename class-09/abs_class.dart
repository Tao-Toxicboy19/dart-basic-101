import './shape.dart';

void main() {
  Circle circle = Circle(5.0);
  circle.viewData();

  Triangle triangle = Triangle(5.0, 4.0);
  triangle.viewData();

  print("ความยาวด้านฐาน: ${triangle.baseLength}");
  print("ความสูง: ${triangle.height}");

  triangle.baseLength = 7.0;
  triangle.height = 6.0;

  print("ความยาวด้านฐานใหม่: ${triangle.baseLength}");
  print("ความสูงใหม่: ${triangle.height}");

  triangle.viewData();
}
