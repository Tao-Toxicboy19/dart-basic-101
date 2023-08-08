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
  // var test_object = {animal_1.viewData(), animal_1.checkInsect()};
  //////////////
  // var person_1 = Person();
  // person_1.personName("Prayut", "test");
  // person_1.checkMarry(true);
  // print(person_1.name);
  // print(person_1.gender);
  ////////////////////////
  var bk = Book();
  bk.setBookData("Bitcoin", 20, "Prayut", 200);
  bk.changeAuthor("John Doe");
  print("รวมคารวม คือ :::${bk.checkBookPrice(20)} บาท");
  bk.checkSend(5);
}

class Book {
  String? title;
  int? pages;
  String? author;
  int? price;

  setBookData(String title, int pages, String author, int price) {
    this.title = title;
    this.author = author;
    this.pages = pages;
    this.price = price;
    print("Add book data Success");
    viewBook();
  }

  viewBook() => print(
      "ชื่อหนังสือ ::${title} จำนวนหน้า ::${pages} ราคา :: ${price} ผู้แต่ง ::${author}");

  changeAuthor(String author) {
    this.author = author;
    viewBook();
  }

  checkBookPrice(int qty) {
    int totalPrice = qty * price!;
    return totalPrice;
  }

  checkSend(int qty) {
    String message = (pages! >= 100) ? "ค่าจัดส่ง: ${qty * 10} บาท" : "ส่งฟรี";
    print(message);
  }
}

class Person {
  String? name;
  String? gender;
  bool? isMarry;
  double? salary;

  personName(String name, String gender) {
    this.name = name;
    this.gender = gender;
    print("Name :: ${name} Gender :: ${gender}");
  }

  checkMarry(bool isMarry) {
    this.isMarry;
    (isMarry) ? print("แต่งงานแล้ว") : print("ยัง");
  }
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
