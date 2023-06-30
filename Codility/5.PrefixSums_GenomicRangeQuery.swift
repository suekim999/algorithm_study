import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 0%
// 시간복잡도: O(N * M)
public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    var arr: [Int] = []
    var result = [Int]()

    for c in S {
        switch c {
            case "A": arr.append(1)
            case "C": arr.append(2)
            case "G": arr.append(3)
            case "T": arr.append(4)
            default: break
        }
    }

    for (i, j) in zip(P, Q) {
        result.append(arr[i...j].min()!)
    }

    return result
}
