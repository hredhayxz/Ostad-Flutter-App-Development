/*
Author: Md Alhaz Mondal Hredhay
Student of Faridpur Polytechnic Institute
GitHub & Linkedin: hredhayxz
E-mail: amhredhay102@gmail.com
*/

abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: \$${amount.toStringAsFixed(2)}");
    print("New Balance: \$${balance.toStringAsFixed(2)}");
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      balance += balance * interestRate;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
      print("New Balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds. Cannot withdraw \$${amount.toStringAsFixed(2)}");
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance + overdraftLimit >= amount) {
      balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
      print("New Balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds. Cannot withdraw \$${amount.toStringAsFixed(2)}");
    }
  }
}

void main() {
  SavingsAccount savingsAccount = SavingsAccount(12345, 1000.0, 0.05);
  savingsAccount.deposit(500.0);
  savingsAccount.withdraw(200.0);

  CurrentAccount currentAccount = CurrentAccount(54321, 2000.0, 1000.0);
  currentAccount.deposit(100.0);
  currentAccount.withdraw(4000.0);
}