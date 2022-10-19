import Foundation

//1. Создать класс Человек с параметрами Имя, Фамилия, Возраст
//Создать класс Работник, который будет наследоваться от класса Человек, но будет иметь дополнительные параметры: Место работы, должность
//Создать класс Инвестор, наследуемый от класса Работник, но будет иметь дополнительные параметры: Количество инвестиций
//
//В каждом классе по-своему реализовать функцию "Приветствие"
//
class Human{
    var name: String = ""
    var surname: String = ""
    var age: Int = 0
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
    func hello() {
        print("Hello! My name is \(name) \(surname). I am \(age) years old.")
    }
}
let samat = Human(name: "Samat", surname: "Sagynaliev", age: 11)
samat.hello()   //Hello! My name is Samat Sagynaliev. I am 11 years old.

class Worker: Human{
    var workPlase: String = ""
    var rank: String = ""
    
    init(workPlase: String, rank: String, name: String, surname: String, age: Int) {
        super.init(name: name, surname: surname, age: age)
        self.workPlase = workPlase
        self.rank = rank
    }
    override func hello() {
        print("Hello! My name is \(name) \(surname). I am \(rank).")
    }
}
let rahat = Worker(workPlase: "Sam", rank: "Sequrity", name: "Rahat", surname: "Mambetaliev", age: 34)
rahat.hello()   //Hello! My name is Rahat Mambetaliev. I am Sequrity.

class Investor: Worker{
    var investment: Int = 0
    
    init(investment: Int, workPlase: String, rank: String, name: String, surname: String, age: Int) {
        super.init(workPlase: workPlase, rank: rank, name: name, surname: surname, age: age)
        self.investment = investment
    }
    override func hello() {
        print("Hello! My name is \(name). I am \(rank). My invesment is - \(investment)")
    }
}
let melis = Investor(investment: 1200000, workPlase: "Sam", rank: "Investor", name: "Melis", surname: "B", age: 45)
melis.hello()   //Hello! My name is Melis. I am Investor. My invesment is - 1200000

//#2. Создать класс Магазин
//Параметры: Название, Площадь, Расположение, Часы работы
//После чего путём наследования создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
//
//Так же в конце должна быть функция, которая будет отображать следующую информацию:
//
//Название магазина. Площадь.
//Расположение. Часы работы.
//
//Наименование товара. Кол-во товара. Цена товара

class Product {
    var name: String = ""
    var quantity: Int = 0
    var price: Int = 0
    
    init(name: String, quantity: Int, price: Int) {
        self.name = name
        self.quantity = quantity
        self.price = price
    }
}
let milk = Product(name: "milk", quantity: 23, price: 45)
let bread = Product(name: "bread", quantity: 43, price: 30)
let coke = Product(name: "coke", quantity: 45, price: 85)

class Shop {
    var name: String = ""
    var area: Int = 0
    var address: String = ""
    var openTime: Int = 0
    var closeTime: Int = 0
    var productArray: [Product] = []
    
    init(name: String, area: Int, address: String, openTime: Int, closeTime: Int) {
        self.name = name
        self.area = area
        self.address = address
        self.openTime = openTime
        self.closeTime = closeTime
    }
    func addProduct(product: Product){
        productArray.append(product)
    }
    func showInfo (){
        print("Магазин - \(name) \nадрес - \(address) \nвремя работы \(openTime) - \(closeTime) \nплощадь - \(area) м2")
        for (index, _) in productArray.enumerated(){
            print("\(productArray[index].name) - \(productArray[index].quantity) шт цена - \(productArray[index].price) сом")
        }
    }
}
let lyubimiy = Shop(name: "Любимый", area: 45, address: "Восточная 292", openTime: 8, closeTime: 22)

lyubimiy.addProduct(product: bread)
lyubimiy.addProduct(product: coke)
lyubimiy.addProduct(product: milk)
lyubimiy.showInfo()                 //Магазин - Любимый
                                    //адрес - Восточная 292
                                    //время работы 8 - 22
                                    //площадь - 45 м2
                                    //bread - 43 шт цена - 30 сом
                                    //coke - 45 шт цена - 85 сом
                                    //milk - 23 шт цена - 45 сом
