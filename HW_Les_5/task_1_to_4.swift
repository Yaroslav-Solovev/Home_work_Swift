// 3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.
protocol WorkProtocol {
    func start()
    func final()
}

protocol MenuProtocol {
    var name: String { get }
    var cost: Double { get }
}

// 4 - Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
extension Pizzeria: WorkProtocol {
    func start() {
        print("Start")
    }
    func final() {
        print("Final")
    }
}
struct Pizza: MenuProtocol{
    enum PizzaType: String{
        case quattroStagioni = "Quattro Stagioni"
        case fruttiDiMare = "Frutti di Mare"
        case braccioDiFerro = "Braccio di Ferro"
        case prosciuttoEFunghi = "Prosciutto e Funghi"
        case montanara = "Montanara"
    }
    enum Additives: String{
        case mushrooms = "Mushrooms"
        case meat = "Meat"
        case cheese = "Cheese"
        case spinach = "Spinach"
        case seafood = "Seafood"
        case pepperoni = "Pepperoni"
        case tomato = "Tomato"
        case anchovies = "Anchovies"
        case pepper = "Pepper"
    }
    enum Dough: String{
        case thick = "Thick"
        case thin = "Thin"
    }
    var type: PizzaType
    var name: String { type.rawValue + " pizza"}
    let cost: Double
    let dough: Dough
    var additives: Additives
    init(type: PizzaType, cost: Double, dough: Dough, additives: Additives) {
        self.type = type
        self.cost = cost
        self.dough = dough
        self.additives = additives
    }
}

// 1.  В рамках прошлого домашнего задания был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. 
// Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, 
// чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри..
struct PotatoFrite: MenuProtocol{
    enum PotatoFriteType: String {
        case sweet = "Sweet"
        case steak = "Steak"
        case tornado = "Tornado"
        case straw = "Straw"
        case classic = "Classic"
    }
    var type: PotatoFriteType
    var name: String { type.rawValue + " potato frite"}
    let cost: Double
    let size: Double
    init(type: PotatoFriteType, cost: Double, size: Double) {
        self.type = type
        self.cost = cost
        self.size = size
    }
}

class Pizzeria{
    private var menu: [MenuProtocol] = []
    init(menu: [MenuProtocol]) {
        self.menu = menu
    }
    // 2 - Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
    func add(_ new: MenuProtocol) {
        menu.append(new)
    }
}