import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array


func contem<Elemento: Comparable>(elementos: [Elemento], elemento: Elemento) -> Bool {
    elementos.contains(where: { (teste) -> Bool in
        return teste == elemento
    })}

contem(elementos: [1,2,3,4,5,6], elemento: 3)

//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico

extension Array where Element: Numeric{
    
    func sum() -> Element {
        var sum = Element.zero
        for i in self {
            sum += i
        }
        return sum
    }
}

//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays

func somaElementos<Element: Comparable>(arr1: [Element], arr2: [Element]) -> Int {
    var contemEmAmbas = 0
    for value in arr1 {
        if arr2.contains(value) {
            contemEmAmbas += 1
        }
    }
    
    return contemEmAmbas
}

somaElementos(arr1: [1,2,3,5], arr2: [1,3,4])

    //BONUS TODO: Fazer o método acima receber N arrays

