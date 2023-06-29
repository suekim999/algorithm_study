import Foundation
import Glibc

// 1. Correctness: 100% , Performance: 20%
// 시간복잡도: O(Y-X)
public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    var count: Int = 0
    var X = X
    
    while X < Y {
        X += D
        count += 1
    }
    
    return count
}

// 2. Correctness: 100% , Performance: 100%
// 시간복잡도 : O(1)
// 인풋에 따라 step이 달라지는 것이 아니라 항상 고정된 step을 행하기 때문에
// O(1)

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let subtract = Y - X
    let divide = Double(subtract) / Double(D)
    let ceiled = ceil(divide)

    return Int(ceiled)

}
