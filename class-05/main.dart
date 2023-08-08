void main() {
  Student std_1 = Student();
  std_1.name = ("John");
  std_1.age = (15);
  std_1.department = ("CAE");
  std_1.viewStudent();
  /////////////////////////////
  Student std_2 = Student();
  std_2.name = ("John Doe");
  std_2.age = (11);
  std_2.department = ("ML");
  std_2.viewStudent();
}

class Student {
  String? name;
  int? age;
  String? department;

  viewStudent() {
    print("Hello ${name} Age ${age} Department ? ${department}");
  }
}
