enum Pizza{
    case mushrooms
    case meat
    case cheese
}

func getBuy (pizza: Pizza) -> Double{
    switch pizza{
        case .mushrooms: return 250
        case .meat: return 230
        case .cheese: return 200
    }
}

print(getBuy(pizza: Pizza.meat))


