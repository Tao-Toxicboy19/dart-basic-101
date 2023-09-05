void main() {
  // var book01 =
  //     Book(bookName: "Bitcoin", author: "Piriya", page: 350, price: 315);
  // book01.viewBookData();
  // var ebook1 = Ebook(
  //     bookName: "Bitcoin",
  //     author: "Piriya",
  //     page: 200,
  //     price: 315,
  //     fileType: "zip",
  //     fileSize: 323);
  // ebook1.viewEbookData();

  // var kits = KidsBook(
  //     image: "Tank",
  //     rate: 8,
  //     sound: false,
  //     bookName: "Tank World",
  //     author: "Prayut",
  //     page: 200,
  //     price: 200);
  // kits.viewKidsBook();

  // var kitsEbook = KitsEbook(
  //     rateing: "15+",
  //     bookName: "Bitcoin",
  //     author: "Piriya",
  //     page: 299,
  //     price: 315,
  //     fileSize: 232,
  //     fileType: "PDF");
  // kitsEbook.bookPrice(kitsEbook.page);

  var vehicle = Vehicle(brand: "BMW", color: "Blue", type: "กระบะ");
  vehicle.viewData();

  var fuelVehicle = FuelVehicle(
      brand: "Isuzu",
      color: "เทา",
      type: "กระบะ",
      fuelType: "ดีเซล",
      fuelTankCapecity: 75);
  fuelVehicle.viewData();
  fuelVehicle.calculatePrice(fuelVehicle.fuelTankCapecity);

  var evVehicle = EvVehicle(
      baterryCapacity: 100,
      chargeType: "type C",
      brand: "Tesla",
      color: "Gary",
      type: "เก๋ง");
  evVehicle.viewData();
  evVehicle.calculatePrice(evVehicle.baterryCapacity);
}

class EvVehicle extends Vehicle {
  int? baterryCapacity;
  String? chargeType;

  EvVehicle(
      {this.baterryCapacity,
      this.chargeType,
      super.brand,
      super.color,
      super.type});

  viewData() => print(
      "baterry ${baterryCapacity} Charge: ${chargeType} Brand: ${brand} color: ${color} Type: ${type}");

  calculatePrice(baterryCapacity) => print("${baterryCapacity * 5000} thb");
}

class FuelVehicle extends Vehicle {
  int? fuelTankCapecity;
  String? fuelType;

  FuelVehicle(
      {this.fuelTankCapecity,
      this.fuelType,
      super.brand,
      super.color,
      super.type});

  viewData() => print(
      "รถ:${type} ${fuelType} ${color} ความจุสูงสุดของถังน้ำมัน ${fuelTankCapecity} ใช้น้ำมันอะไร ${fuelType}");

  calculatePrice(fuelTankCapecity) =>
      print("ค่าน้ำมัน ${fuelTankCapecity * 1000} thb");
}

class Vehicle {
  String? color;
  String? brand;
  String? type;

  Vehicle({this.color, this.brand, this.type});

  viewData() => print("รถสี ${color} Brand ${brand} Type ${type}");
}

class KitsEbook extends Ebook {
  String? rateing;
  int? price;

  KitsEbook(
      {this.rateing,
      super.bookName,
      super.author,
      super.page,
      super.price,
      super.fileSize,
      super.fileType}) {
    print("Constractor Kids E book");
  }
}

class KidsBook extends Book {
  String? image;
  int? rate;
  bool? sound;

  KidsBook(
      {super.bookName,
      super.author,
      super.page,
      super.price,
      this.image,
      this.rate,
      this.sound});
  viewKidsBook() {
    String soundStatus = sound ?? false ? "มีเสียง" : "ไม่มีเสียง";
    print(
        "Image: $image Rate: $rate Sound: $soundStatus Bookname: $bookName Author: $author Page: $page Price $price");
  }

  bookPrice(page) => print("Kits E-book :: Price ${page * 5} thb");
}

class Ebook extends Book {
  String? fileType;
  double? fileSize;

  Ebook(
      {super.bookName,
      super.author,
      super.page,
      super.price,
      this.fileType,
      this.fileSize}) {
    print("Constractor E-book");
  }
  viewEbookData() => print(
      "Book: ${bookName} Author: ${author} Page: ${page} Price: ${page} Type: ${fileType} Size: ${fileSize}");
}

class Book {
  String? bookName;
  String? author;
  int? page;
  int? price;

  Book({this.bookName, this.author, this.page, this.price}) {
    print("Constractor Book");
  }

  bookPrice(page) => print("Book:: Price ${page * 5} thb");

  viewBookData() =>
      print("Book: ${bookName} Author: ${author} Page: ${page} Price: ${page}");
}
