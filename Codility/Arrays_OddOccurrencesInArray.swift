import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    var dic: [Int: Int] = [:]

    for num in A {
        dic[num] = (dic[num] ?? 0) + 1
    }

    for d in dic {
        if d.value % 2 == 1 {
            return d.key
        }
    }

    return 0
}
