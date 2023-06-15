// 1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
enum PizzaType: String{
    case quattroStagioni = "Quattro Stagioni"
    case fruttiDiMare = "Frutti di Mare"
    case braccioDiFerro = "Braccio di Ferro"
    case prosciuttoEFunghi = "Prosciutto e Funghi"
    case montanara = "Montanara"
}
// 2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки 
// (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. 
// Подсказка: добавки лучше также сделать перечислением.
struct Pizza{
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
    let price: Double
    let dough: Dough
    var additives: Additives
}
// 3. Создать класс пиццерии, добавить массив с возможными видами пиццы. 
// Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.
class Pizzeria{
    private var pizza: [Pizza] = []
    init(pizza:[Pizza]){
        self.pizza = pizza
    }
    // 4. Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.
    convenience init() {
      let moon = Pizza(type: .montanara, price: 200, dough: .thin, additives: .mushrooms)
      let cat = Pizza(type: .prosciuttoEFunghi, price: 300, dough: .thick, additives: .anchovies)
      self.init(pizza: [moon, cat])
    }
    func addNewPizzaType(pizza: Pizza){
        self.pizza.append(pizza)
        print(pizza)
    }
}
// 5. Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
let hot = Pizza(type: .quattroStagioni, price: 230, dough: .thin, additives: .mushrooms)
let cool = Pizza(type: .braccioDiFerro, price: 150, dough: .thick, additives: .seafood)
var pizzeria = Pizzeria(pizza: [hot, cool])
var newPizzeria = Pizzeria()

