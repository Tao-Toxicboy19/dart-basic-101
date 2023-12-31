class Triangle extends Shape {
  double _baseLength;
  double _height;

  Triangle(this._baseLength, this._height);

  set height(double height) => this._height = height;
  set baseLength(double baseLength) => this._baseLength = baseLength;

  double get height => _height;
  double get baseLength => _baseLength;

  @override
  double area() {
    return (_baseLength * _height) / 2;
  }

  @override
  void viewData() {
    print("ความยาวด้านฐานของสามเหลี่ยม: $_baseLength");
    print("ความสูงของสามเหลี่ยม: $_height");
    print("พื้นที่ของสามเหลี่ยม: ${area()}");
  }
}

class Circle extends Shape {
  double _radius;

  Circle(this._radius);

  serRadius(double r) => _radius = r;

  getRadius() => print(_radius);

  @override
  double area() {
    return 3.14159265359 * _radius * _radius;
  }

  @override
  void viewData() {
    print("รัศมีของวงกลม: $_radius");
    print("พื้นที่ของวงกลม: ${area()}");
  }
}

class Rectanngle extends Shape {
  int w = 0;
  int h = 0;

  @override
  area() {
    print(w * h);
  }

  @override
  viewData() {
    print('Width:: $w Heght:: $h');
  }
}

abstract class Shape {
  area();

  viewData();
}
