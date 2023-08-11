import UIKit

//Variable, Constant (let), Static
var greeting = "Hello, playground";
var x :Float = 9.0
var num = [5,2,7,2,7,2,1,3]
for thing in num{
    print(thing)
}
//loops
var i = 0
while i<5 {
    print("ok")
    i+=1
    if(i==3){
        break
    }
    
}
for i in stride(from: 1, to: 10, by: 2) {
    print(i)
}

let r :Int = 3

//class
class Person {
    let study: Bool
    
    init(study: Bool) {
        self.study = study
    }
    
    static let age = 12
    var name = "Farhan"
    
    func sum(a: Int = Person.age, b: Float) ->  Float {
        return Float(a) + b
    }
    func square(b: Float) ->  Float {
        return b*b
    }
}
//class -> reference type
// struct -> value type

let res = Person(study: false).sum(b:22.0)
Person(study: true).square(b: res)
var btn = UIButton()

//optionals
var name: String?
name = "farhan"
name = nil

//condition
func conditionValue(){
    
    var n1: Int? = 1
    var n2: Int? = 2
    
    type(of: n1)
    guard let value1 = n1, let value2 = n2  else { return }
    
    if value1 > value2{
        print("n1 bigger than n2")
    } else if n1 == n2{
        print("n1 equal n2")
    } else if (n1 ?? 0 < n2 ?? 0 ){
        
            print("n2 bigger n1")
    }
}
conditionValue()

//enums and case
enum States: String {
    case InProgress = "1", Aborted="2", Complete="3", WillStart="4"
}

var current = States.InProgress

func checkState(){
    switch current {
    case .InProgress:
        print(States.InProgress.rawValue)
        break
    case .Aborted:
        print(States.Aborted.rawValue)
        break
    case .WillStart:
        print(States.WillStart.rawValue)
        break
    default:
        print(States.Complete.rawValue)
        break
    }
}
checkState()


let numbers = [45, 73, 195, 53]
var computedNumbers = [Int]();
   //Write your code here
for i in stride(from :0, to: numbers.count, by: 1){
    if(i == numbers.count-1){
        computedNumbers += [numbers[i]*numbers[0]]
        
    }else{
        computedNumbers += [numbers[i]*(numbers[i+1])]
    }
    
}



   let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
   
   //The number of letters in alphabet equals 26
   
   let password = alphabet[Int.random(in:0...alphabet.count)] + alphabet[Int.random(in:0...alphabet.count)] + alphabet[Int.random(in:0...alphabet.count)] + alphabet[Int.random(in:0...alphabet.count)] + alphabet[Int.random(in:0...alphabet.count)]
   
   print(password)

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String:Int]
    
    init(name: String, citizens: [String], resources: [String:Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
}

var myTown = Town(name: "Konoha", citizens: ["Naruto","Sasuke"], resources: ["Bamboo" : 90])
myTown.citizens.append("Sakura")
print(myTown)



