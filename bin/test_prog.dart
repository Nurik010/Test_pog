Map <int,int> allMoney = {100: 5, 500: 6, 1000: 0, 5000: 5}; // создаём словарь

void getMoneyFromATM(int giveOut) {
  for (final key in allMoney.keys.toList().reversed){  // перебор ключей с конца списка

    while (giveOut != 0){ 
      if (giveOut < key || allMoney[key] == 0){ // проверка можно ли использовать текущий номинал дальше в цикле
        break;
      }
      giveOut = giveOut - key;
      allMoney[key] = allMoney[key]! - 1;
    }
  }
  if (giveOut != 0){
    print("Невозможно выдать данную сумму.\n");
    return;
  } 
  print("Сумма выдана.\n");
  print("Количество оставшихся номиналов купюр:");
  for (final key in allMoney.keys){
    print("${allMoney[key]} шт номинала $key");
  }
  print("\n");
}

void main(){
  getMoneyFromATM(1000);
  getMoneyFromATM(2500);
  getMoneyFromATM(26000);
}