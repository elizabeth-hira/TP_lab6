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

    return intDigits == intDigits.reversed()
}

func uniqueSymbols(string: String) {
    let stringArray = [Character](Array(string))
    let dictionary = Dictionary(grouping: stringArray, by: { $0 }).mapValues{ items in items.count }
    
    dictionary.sorted(by: {
        $0.value > $1.value
    })
    
    let ascendingArray = Array(dictionary.keys)
    print(ascendingArray)
}

isPalindrome(number: 4554)
uniqueSymbols(string: "Don't kill me, please")
