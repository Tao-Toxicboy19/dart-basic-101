import 'BankAccount.dart';

void main() {
  var acc1 = BankAccount(accNumber: "404-404-768");
  acc1.setAccName = "Home Saving";
  acc1.setHolder = "Mr. Tommy";
  print("My Money: ${acc1.get_balance}");
  acc1.viewAccount();

  var t1 = BankTransaction("deposit", 225000, "Mr. Banker", "13-09-2023");
  acc1.addTransaction(t1);
  var t2 = BankTransaction("deposit", 527000, "Mr. Banker", "15-09-2023");
  acc1.addTransaction(t2);
  var t3 = BankTransaction("withdraw", 80000, "Mr.John", "19-09-2023");
  acc1.addTransaction(t3);
  var t4 = BankTransaction("withdraw", 500, "Mr. John", "13-09-2023");
  acc1.addTransaction(t4);
  var t5 = BankTransaction("deposit", 527000, "Mr. Marston", "15-09-2023");
  acc1.addTransaction(t5);
  var t6 = BankTransaction("withdraw", 80000, "Mr.Marston", "19-09-2023");
  acc1.addTransaction(t6);

  acc1.viewAccountTransaction();
}
