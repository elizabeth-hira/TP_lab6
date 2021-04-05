import UIKit

extension StringProtocol {
    var digits: [Int] { compactMap(\.wholeNumberValue)}
}
extension LosslessStringConvertible {
    var string: String { .init(self) }
}
extension Numeric where Self: LosslessStringConvertible {
    var digits: [Int] { string.digits }
}

func isPalindrome(number: Int) -> Bool {
    let intDigits = number.digits

    if intDigits == intDigits.reversed() {
        return true
    } else {
        return false
    }
}

func uniqueSymbols(string: String) {
    let stringArray = [Character](Array(string))
    var dictionary = [Character: Int]()
    
    for i in stringArray {
        if dictionary[i] != nil {
            dictionary[i]! += 1
        } else {
            dictionary[i] = 1
        }
    }
    dictionary.sorted(by: {
        $0.value > $1.value
    })
    
    let ascendingArray = Array(dictionary.keys)
    print(ascendingArray)
}

isPalindrome(number: 4554)
uniqueSymbols(string: "Don't kill me, please")
