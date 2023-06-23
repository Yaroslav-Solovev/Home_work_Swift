protocol WorkProtocol {
    func start()
    func final()
}

protocol MenuProtocol {
    var name: String { get }
    var cost: Double { get }
}

extension Pizzeria: WorkProtocol {
    func start() {
        print("Start")
    }
    func final() {
        print("Final")
    }
}

// - 1 - Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. 
// Должностей пока может быть две: или кассир, или повар...
struct Worker{
    enum JobTitle: String{
        case cashier = "Сashier"
        case cook = "Сook"
    }
    let name: String
    let salary: Double
    let jobTitle: JobTitle
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
    // - 1 - ...Добавить в класс пиццерии массив с работниками.
    private var worker: [Worker] = []
    // - 3 - Добавить в класс пиццерии свойство, в котором хранится массив столиков...
    // ...Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.
    private var tables: [Int] = []

    init(worker:[Worker], menu: [MenuProtocol], tables: [Int]){
        self.worker = worker
        self.menu = menu
        self.tables = tables
    }
    func addWorker(newWorker: Worker){
        worker.append(newWorker)
    }
    func addTable(newTable: Int){
        tables.append(newTable)
    }
    func add(_ new: MenuProtocol) {
        menu.append(new)
    }
}

// - 2 - Создать класс столика, в нём должно быть свойство, в котором содержится количество мест и функция, 
// которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, 
// если места не хватает. Изначальное количество мест задаётся в инициализаторе.

class Table{
    // - 3 - ...У класса столика добавить свойство, в котором хранится кафе, в котором стоит столик... 
    private var cafe: String = ""
    private var numberOfSeats: Int
    init(numberOfSeats: Int){
        self.numberOfSeats = numberOfSeats
    }
    func freeSeats(numberOfGuests: Int) -> Bool {
        if numberOfGuests <= numberOfSeats{
            return true
        } else {
            return false
        }
    }
}
let newTable = Table(numberOfSeats: 10)
print(newTable.freeSeats(numberOfGuests: 5))


