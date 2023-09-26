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
}

class DoubleRoom extends HotelRoom{
  
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
