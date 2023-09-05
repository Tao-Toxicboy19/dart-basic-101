void main() {
  // Animal(m: "Tun");
  // Animal(m: "Print");

  // var dino = Dinosaur(dinoName: "wit", dinoFood: "raptor");
  // dino.viewDinosaurData();
  // var address1 = Address('Kalasin', 46000, 13.6413154, 100.454545);
  // var address2 = Address.byZipcode(49110);

  var connect = ConnectDatabase("Babankbro", "root", "root", "192.00.00.19");
  connect.viewDataConnectDatabase();

  var sender = Sender(
      senderName: "John Doe",
      senderCity: "Bangkok",
      sendPrice: 9999,
      senderZipcode: 5000,
      sendWeight: 60);
  sender.viewDataSender();

  // var student = Student();
  // student.name = "Prawit";
  // student.age = 78;
  // student.studentId = 5678;
  // student.major = "CAE";
  // student.viewData();
}

class Person {
  String? name;
  int? age;

  Person({this.name, this.age});
  viewData() => print("Name::${name} Age::${age}");
}

class Student extends Person {
  int? studentId;
  String? major;
}

class Thee {
  String? senderName;
  String? senderCity;
  double? senderZipcode;
  double? sendPrice;
  double? sendWeight;

  Thee(
      {this.senderName,
      this.senderZipcode,
      this.senderCity,
      this.sendPrice,
      this.sendWeight});

  Thee.byName({this.senderName, this.senderZipcode});
  Thee.byCity(this.senderCity);
  Thee.byZipcode(this.senderZipcode);
  Thee.byPrice(this.sendPrice);
  Thee.byWeight(this.sendWeight);
}

class Sender {
  String? senderName;
  String? senderCity;
  double? senderZipcode;
  double? sendPrice;
  double? sendWeight;

  Sender(
      {this.senderName,
      this.senderZipcode,
      this.senderCity,
      this.sendPrice,
      this.sendWeight});
  viewDataSender() => print(
      "Sender::${senderName} Sender Zipcode :: ${senderZipcode} Sender City :: ${senderCity} send Price:: ${sendPrice} send Weight ::${sendWeight}");
}

class ConnectDatabase {
  String? dB_Name;
  String? username;
  String? password;
  String? ipAddress;

  ConnectDatabase(this.dB_Name, this.username, this.password, this.ipAddress);

  viewDataConnectDatabase() => print(
      "DB:: ${dB_Name} User:: ${username} Password:: ${password} IP::${ipAddress}");
}

class Address {
  String? province;
  double? zipcode;
  double? lat;
  double? long;

  Address(this.province, this.zipcode, this.lat, this.long);
  Address.byZipcode(this.zipcode);
  Address.byProvince(this.province);
}

class Dinosaur {
  String dinoName = "";
  String dinoFood = "";

  Dinosaur({this.dinoName = '', this.dinoFood = ''});

  viewDinosaurData() {
    print("Name ${dinoName} Eat:${dinoFood}");
  }
}

class Animal {
  String myAminal = "";

  Animal({String? m}) {
    print("Hello");
    print("i am animal ${m}");
  }
}
