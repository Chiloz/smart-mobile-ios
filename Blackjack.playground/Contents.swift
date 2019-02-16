import UIKit

var input1:Int = 11
var input2:Int = 11

if input1 + input2 > 21 {
    if input1 == 11 {
        input1 = 1
    } else if input2 == 11 {
        input2 = 1
    }
    
    if input1 + input2 > 21 {
        print(0)
    } else {
        print(input1 + input2)
    }
} else {
    print(input1 + input2)
}

