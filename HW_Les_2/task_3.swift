// Добавить возможность получения названия пиццы через rawValue.
enum Pizza: String{
    case mushrooms = "Pizza with mushrooms: "
    case meat = "Pizza with meat: "
    case cheese = "Cheese pizza: "
}

func getBuy (pizza: Pizza) -> Double{
    switch pizza{
        case .mushrooms: return 250
        case .meat: return 230
        case .cheese: return 200
    }
}

func getName(pizza: Pizza) -> String{
    pizza.rawValue
}

print("Your order...")
print(getName(pizza: .mushrooms))
print(getBuy(pizza: Pizza.mushrooms))
