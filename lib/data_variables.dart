import 'transfer_money.dart';

int savingsAccount = 100000;
int amount = 0;
int transaction = 0;
String account = "";

int validate() {
  account = accountNumber.text;
  if (account == "") {
    return 0;
  } else {
    if (account.length == 12) {
      if (inputAmount.text.isEmpty) {
        return 5;
      } else {
        amount = int.parse(inputAmount.text);
        transaction = amount;
        if (amount > 200) {
          if (amount <= savingsAccount) {
            return 1;
          } else {
            return 3;
          }
        } else {
          return 2;
        }
      }
    } else {
      return 4;
    }
  }
}

int transferConfirmation() {
  inputAmount.clear();
  accountNumber.clear();
  savingsAccount -= amount;
  return 1;
}

moneyData(String money) {
  if (money.length > 2) {
    var value = money;
    value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
    return value;
  } else {
    return money;
  }
}

var now = DateTime.now();
var month = now.month.toString().padLeft(2, '0');
var day = now.day.toString().padLeft(2, '0');
var date = '${now.month}-$day-${now.year}:${now.hour}:${now.minute}';
