import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 100%
// 시간복잡도: O(1)
public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    let start = ceil(Double(A) / Double(K))
    let end = floor(Double(B) / Double(K))

    return Int(end) - Int(start) + 1
}

// 시작의 경우 그 위의 숫자부터 가능하고
// end의 경우, 그 전에 자연수까지 가능하기 때문에
// 각각 ceil(올림), floor(버림)를 함

// input의 크기와 상관없이 동일한 step을 진행하기 때문에
// 시간복잡도는 O(1)이 됨
