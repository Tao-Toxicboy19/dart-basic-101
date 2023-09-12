import './shape.dart';

void main() {
  Circle circle = Circle(5.0);
  circle.viewData();

  Triangle triangle = Triangle(5.0, 4.0);
  triangle.viewData();
  triangle.setData(50, 50);
}
