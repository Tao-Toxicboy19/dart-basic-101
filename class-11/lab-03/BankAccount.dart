class BankTransaction {
  String? transactionType;
  double amount;
  String? officerName;
  String? transactionDate;

  BankTransaction(this.transactionType, this.amount, this.officerName,
      this.transactionDate);
}

class BankAccount {
  String? _accountName = null;
  String? _accNumber = null;
  String? _accountHolder = null;
  double _balance = 0;
  String? accountType;
  List<BankTransaction> accountTransactions = [];

  BankAccount({String? accName, String? accNumber, String? holder}) {
    this._accountName = accName;
    this._accNumber = accNumber;
    this._accountHolder = holder;
  }

  set setAccName(String accountName) {
    _accountName = accountName;
  }

  set setHolder(String holder) {
    _accountHolder = holder;
  }

  // Getter for balance
  double get get_balance => _balance;

  // Add transaction to the bank account
  void addTransaction(BankTransaction b) {
    if (b.transactionType == "deposit") {
      _balance += b.amount;
    } else if (b.transactionType == "withdraw") {
      if (b.amount <= _balance) {
        _balance -= b.amount;
      } else {
        print("Insufficient balance");
        return;
      }
    }
    accountTransactions.add(b);
  }

  // View account details
  void viewAccount() {
    print("------Bank App------");
    print("Account no: $_accNumber");
    print("Account Name: $_accountName");
    print("Account Holder Name: $_accountHolder");
    print("Balance: $_balance THB");
    print("--------------------");
  }

  // View bank transaction history
  void viewAccountTransaction() {
    viewAccount();
    for (var i in accountTransactions) {
      print("Transaction Type: ${i.transactionType}");
      print("Amount: ${i.amount} THB");
      print("Officer: ${i.officerName}");
      print("Date: ${i.transactionDate}");
      print("--------------------");
    }
  }
}
