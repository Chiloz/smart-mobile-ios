import UIKit

let numbers = [6, -8, 2, -4]
var output = 0

for index in numbers {
    if index < 0 {
        output -= index
    } else {
        output += index
    }
}

print(output)
