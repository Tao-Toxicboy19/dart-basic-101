void main() {
  Student std_1 = Student();
  std_1.name = ("John");
  std_1.age = (15);
  std_1.department = ("CAE");
  // std_1.viewStudent();
  /////////////////////////////
  Student std_2 = Student();
  std_2.name = ("John Doe");
  std_2.age = (11);
  std_2.department = ("ML");
  // std_2.viewStudent();
  ////////////////////////
  Animal animal_1 = Animal();
  animal_1.animalName = ("Prayut");
  animal_1.animalType = ("Kuk");
  animal_1.numberOfLeqs = (4);
  var test_object = {animal_1.viewData(), animal_1.checkInsect()};
  //////////////
  var person_1 = Person();
  person_1.personName("Prayut","test");
  
}

class Person {
  String? name;
  String? gender;
  bool? isMarry;
  double? salary;

  personName(String name, String gender) =>
      {print("Name :: ${name} Gender :: ${gender}")};
}

class Animal {
  String? animalName;
  int numberOfLeqs = 0;
  String? animalType;

  viewData() => print("Animal name:${animalName} Type::${animalType}");

  checkInsect() => (numberOfLeqs >= 8) ? print("แมง") : print("ไม่ใช่แมง");
}

class Student {
  String? name;
  int? age;
  String? department;

  viewStudent() {
    print("Hello ${name} Age ${age} Department ? ${department}");
  }
}
