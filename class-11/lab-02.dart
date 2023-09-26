void main() {
  HotelRoom hotelRoom = HotelRoom();
  hotelRoom.roomNumber = 123;
  hotelRoom.roomPrice = 1000;
  hotelRoom.isRoom = false;
  hotelRoom.roomDetail();

  SignleRoom signleRoom1 = SignleRoom(1);
  SignleRoom signleRoom2 = SignleRoom(2);
  SignleRoom signleRoom3 = SignleRoom(3);
  SignleRoom signleRoom4 = SignleRoom(4);

  signleRoom1.roomDetail();
  signleRoom2.roomDetail();
  signleRoom3.roomDetail();
  signleRoom4.roomDetail();

  var doubleRoom1 = DoubleRoom(1);
  doubleRoom1.roomDetail();
  var doubleRoom2 = DoubleRoom(2);
  doubleRoom2.roomDetail();
  var doubleRoom3 = DoubleRoom(3);
  doubleRoom3.roomDetail();

  var kingRoom1 = DoubleKingRoom(1, 2500);
  kingRoom1.roomDetail();
  var kingRoom2 = DoubleKingRoom(2, 2500);
  kingRoom2.roomDetail();
  var kingRoom3 = DoubleKingRoom(3, 2500);
  kingRoom3.roomDetail();

  var myRoom = RoomList();
  for (var i = 1; i <= 10; i++) {
    var singleRoom = SignleRoom(i);
    myRoom.addRoom(singleRoom);
  }
  myRoom.viewList();

  var book1 = BookingRoom();
  book1.bookingRoom(signleRoom1, 2, "MR.Prayut");
  var book2 = BookingRoom();
  book2.bookingRoom(signleRoom2, 1, "MR.Prawit");
  var book3 = BookingRoom();
  book3.bookingRoom(signleRoom3, 3, "MR.John");
}

class BookingRoom {
  void bookingRoom(HotelRoom room, int night, String customer) {
    if (room.isRoom == true) {
      print("ห้องพักหมายเลบ ${room.roomNumber} ถูกจองไปแล้ว");
    } else {
      room.isRoom = true;
      print('--------------จองห้องพัก------------------');
      print('จองห้องหมายเลข:${room.roomNumber}');
      print('ชื่อผู้จอง :: ${customer}');
      print('ค่าห้องพัก: ${room.roomPrice! * night}บาท');
    }
  }
}

class RoomList {
  List<HotelRoom> roomList = [];

  void addRoom(HotelRoom room) {
    roomList.add(room);
  }

  void viewList() {
    print('-------------Room list-----------------');
    roomList.forEach((element) {
      print(
          'ห้อง:: ${element.roomNumber} ราคา:: ${element.roomPrice} สถานะ:: ${element.isRoom ? 'จองแล้ว' : 'ว่าง'}');
    });
  }
}

class DoubleKingRoom extends DoubleRoom {
  @override
  int romPrice = 2500;

  DoubleKingRoom(int roomNumber, this.romPrice) : super(roomNumber) {
    print('KING ROOM PRICE : $romPrice');
  }

  @override
  void roomDetail() {
    super.roomDetail(); // Call the superclass roomDetail() method
    print('Room Type: King');
  }
}

class DoubleRoom extends HotelRoom {
  int numberOfbed = 2;
  int? roomNumber;
  int? roomPrice = 1800;

  DoubleRoom(this.roomNumber);

  @override
  void roomDetail() {
    print('Double Room Number: $roomNumber');
    print('Double Room ');
    showPrice();
    print('สถานะ:: ${isRoom ? 'จองแล้ว' : 'ว่าง'}');
  }

  @override
  showPrice() => print('ราคาห้องพัก :: ${roomPrice} บาท');
}

class SignleRoom extends HotelRoom {
  int? numberOfBed = 1;
  int? roomNumber;
  int? roomPrice = 1500;

  SignleRoom(this.roomNumber);

  @override
  void roomDetail() {
    print("หมายเลขห้อง :: $roomNumber");
    print('ประเภท :: Single');
    showPrice();
    print('สถานะ :: ${(isRoom) ? 'จองแล้ว' : 'ว่าง'}');
  }

  @override
  showPrice() {
    print('ราคาห้องพัก :: $roomPrice บาท');
  }
}

class HotelRoom {
  int? numberOfBed;
  int? roomNumber;
  int? roomPrice;
  bool isRoom = false;

  roomDetail() {
    print('Room Number: $roomNumber\n');
    print('ประเภท :: Signle');
    print('สถานะ :: ${(isRoom) ? 'จองแล้ว' : 'ว่าง'}');
  }

  showPrice() {
    print('ราคาห้องพัก :: $roomPrice บาท');
  }
}
