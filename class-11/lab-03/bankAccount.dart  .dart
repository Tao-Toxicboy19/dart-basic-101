import 'BankAccount.dart';

void main() {
  BankAccount myAccount = BankAccount(accountNumber: '1234567890');
  myAccount.viewAccount();
  myAccount.setAccName = 'John Smith';
  myAccount.setHolder = 'Holder';
  print('My Money ${myAccount.get_balance}');
  myAccount.viewAccount();
}

class BankTransaction {
  String? transactionType;
  int? amouth;
  String? officerName;
  String? transactionDate;
  BankTransaction(this.transactionType, this.amouth, this.officerName,
      this.transactionDate);
}

class BankAccount {
  String? _accountName;
  String? _accountNumber;
  String? _accountHolder;
  int _balance = 0;
  String? accountType;
  List<BankTransaction> accountTransactions = [];

  BankAccount({
    String? accountName,
    String? accountNumber,
    String? accountHolder,
  }) {
    this._accountName = accountName;
    this._accountNumber = accountNumber;
    this._accountHolder = accountHolder;
  }
  set setAccName(String accountName) => _accountName = accountName;
  set setHolder(String accountHolder) => _accountHolder = accountHolder;
  int get get_balance => _balance;

  void viewAccount() {
    print('--------Bank App---------');
    print(
        'Account No:${_accountNumber} \n Account Name:${_accountName} \n Account Holder:${_accountHolder}\n Balance : ${_balance} THB ');
    print('-------------------------');
  }
}
