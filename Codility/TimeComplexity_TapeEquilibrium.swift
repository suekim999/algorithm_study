import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 33%
// 시간복잡도 O(N*N)
// reduce()의 시간복잡도 O(N)
public func solution(_ A : inout [Int]) -> Int {
    var result: [Int] = []

    for p in 1...(A.count - 1) {
        let subtract = A.prefix(p).reduce(0, +) - A.suffix(A.count - p).reduce(0, +)
        result.append(abs(subtract))
    }

    return result.min()!
}


// 2.Correctness: 100%, Performance: 100%
// 시간복잡도 O(N)
import Foundation
import Glibc


public func solution(_ A : inout [Int]) -> Int {
    var sum: Int = 0
    var arr = [(Int, Int)]()
    let total = A.reduce(0, +)

    for p in 0...(A.count - 2) {
        sum += A[p]
        arr.append((sum, total - sum))
    }

    let mapped = arr.map { abs($0.0 - $0.1) }

    return mapped.min()!
}


// 1번 풀이의 경우 시간 복잡도가 N의 제곱으로 인풋이 커질수록 처리 속도가 너무 느려짐
// 2번 풀이의 경우, for문에 O(N)이 되지 않도록 가장 간단한 연산 정도만 수행
// map의 시간 복잡도: O(N)
