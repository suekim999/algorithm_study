import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N*log(N)) or O(N)
// count의 시간복잡도 O(N) - 처음부터 끝까지 하나씩 세어나간다고 함
// https://hyerios.tistory.com/27
public func solution(_ A : inout [Int]) -> Int {
    return Set(A).count
}
