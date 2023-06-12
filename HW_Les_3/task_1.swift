// Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай 
// (можно представить её в виде массива видов чая, которые хотят заказать). Необходимо последовательно 
// выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал и стоимость).
enum Tea: String{
    case green = "Green"
    case black = "Black"
    case frutice = "Frutice"
}

var teaPrice: [Tea: Int] = [Tea.green: 250, Tea.black: 200, Tea.frutice: 300]
var order = ["Green", "Green", "Frutice", "Green", "Black", "Black", "Black"]

for (index, element) in order.enumerated() {
    if element == "Green"{
       print("Заказ покупателя под номером " + String(index+1) + ": " + element + " tea стоимостью " + teaPrice[Tea.green] + " rub.")
    }
    if element == "Black"{
       print("Заказ покупателя под номером " + String(index+1) + ": " + element + " tea стоимостью " + teaPrice[Tea.black] + " rub.")  
    }
    if element == "Frutice"{
       print("Заказ покупателя под номером " + String(index+1) + ": " + element + " tea стоимостью " + teaPrice[Tea.frutice] + " rub.")  
    }
}
