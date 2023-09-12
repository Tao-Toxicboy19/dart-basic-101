void main() {
  print('HumYai Thailand');

  var c1 = Coffee(coffeeName: 'Capuchino', price: 50);
  var c2 = Coffee(coffeeName: 'history coffe in thai', price: 50);
  var c3 = Coffee(coffeeName: 'Latte', price: 50);

  var c4 = CoffeeMix(
      addOn: 'ChaGreen', addPrice: 20, coffeeName: 'history coffe', price: 50);
  var c5 = CoffeeMix(
      addOn: 'ChaThai', addPrice: 20, coffeeName: 'history coffe', price: 50);
  var c6 = CoffeeMix(
      addOn: 'ChaPama', addPrice: 20, coffeeName: 'history coffe', price: 50);

  // c4.viewData();
  var b1 = Billing();
  b1.addList(c1);
  b1.addList(c2);
  b1.addList(c3);

  b1.viewList();
}

class Billing {
  List<Coffee> billList = [];

  addList(Coffee c) => billList.add(c);

  viewList() {
    int? totalprice = 0;
    for (var i in billList) {
      i.viewData();
      totalprice = totalprice! + (i.price!);
    }
    print('total Price ${totalprice}');
  }
}

class CoffeeMix extends Coffee {
  String? addOn;
  int? addPrice;

  CoffeeMix({this.addOn, this.addPrice, super.coffeeName, super.price});

  viewData() => print(
      'ชื่อเมนู:: ${coffeeName} ราคา:: ${price} add-on::${addOn} เพิ่มเงิน::${addPrice}');
}

class Coffee {
  String? coffeeName;
  int? price;

  Coffee({this.coffeeName, this.price});

  @override
  viewData() => print('ชื่อเมนู:: ${coffeeName} ราคา:: ${price}');
}
