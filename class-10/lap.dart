void main() {

  // เทวราช คนหาญ

  var food1 = FoodItem("Pizza", 100);
  var food2 = FoodItem("ส้มตำ", 40);
  var food3 = FoodItem("ไก่ย่าง", 40);
  var food4 = FoodItem("ปลาเผา", 80);
  var food5 = FoodItem("ไข่", 10);
  var food6 = FoodItem("ก๋วยเตี๋ยว", 40);
  var food7 = FoodItem("ข้าวแกง", 40);
  food1.viewData();

  var order1 = FoodOrder('Order 1');
  order1.addFood(food1);
  order1.addFood(food2);
  order1.addFood(food3);
  order1.addFood(food4);
  order1.addFood(food5);
  order1.addFood(food6);
  order1.addFood(food7);
  var order2 = FoodOrder('Order 2');
  order2.addFood(food3);
  order2.addFood(food4);

  print(order1.calcalateTotal());
  order1.viewOrder();
}

class FoodItem {
  String? foodName;
  double? foodPrice;
  FoodItem(this.foodName, this.foodPrice);

  viewData() => print('''
    Food:: ${foodName} 
    Price:: ${foodPrice}
    ''');
}

class FoodOrder {
  List<FoodItem> foodList = [];
  String? orderNumber;

  FoodOrder(this.orderNumber);

  addFood(FoodItem item) {
    foodList.add(item);
  }

  calcalateTotal() {
    double foodTotal = 0.0;
    for (var item in foodList) {
      foodTotal += item.foodPrice!;
    }
    return foodTotal;
  }

  viewOrder() {
    print('Order Number:: ${orderNumber}');
    for (var item in foodList) {
      print('''
          Food name:: ${item.foodName} 
          Price:: ${item.foodPrice}
        ''');
    }
    print('Total: ${calcalateTotal()} bath');
  }
}
