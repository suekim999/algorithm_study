import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 60%
public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var arr: [Int] = Array(repeating: 0, count: N)

    for counter in A {
        if counter == N + 1 {
            let max = arr.max()!
            arr =  Array(repeating: max, count: N)
        } else {
            arr[counter - 1] += 1
        }
    }

    return arr
}
