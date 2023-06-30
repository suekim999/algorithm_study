import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 25%
// 시간복잡도: O(N**2)
// contains()의 시간복잡도: O(N)
public func solution(_ A : inout [Int]) -> Int {
    let big = A.max()!

    if big <= 0 { return 1 }

    for num in 1...big {
        if !A.contains(num) {
            return num
        }
    }
    
    return big + 1
}

// 2. Correctness: 100%, Performance: 50%
// 시간복잡도 : O(N) or O(N * log(N))
// minus가 있는 긴 input에 대해 시간 초과에러남
public func solution(_ A : inout [Int]) -> Int {
    let big: Int = A.max()! // O(N)

    guard big > 0 else { return 1 }
    let arr = Set(1...big).subtracting(Set(A)).sorted()

    return arr.isEmpty ? big + 1 : arr.first!
}

// 다른 분의 답을 참고해서 Swift로 작성
// 3. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N) or O(N * log(N))
public func solution(_ A : inout [Int]) -> Int {
    let A = Set(A).sorted() // O(N)
    var min: Int = 1

    for num in A {
        if num == min {
            min += 1
        }
    }

    return min
}

// 2번과 3번 모두 시간복잡도가 비슷한 것 같은데 왜 정확도가 다를까?
// https://math.stackexchange.com/questions/1473840/what-is-the-big-o-when-i-subtract-two-sets
// 2번 풀이에서 subtracting을 하고 sorted를 하는게 3번에 비해서 비교적 시간을 더 잡아먹는게 아닌가 싶다.
// 계속 시간 복잡도를 따지게 되면서 그냥 for문이 시간이 많이 걸릴 수도 있겠다라는 생각이 자동적으로 들었던 것 같다. (왜인지는 모르겠음,,,O(N)인데..괜히,,)
// 시간 복잡도를 처음부터 생각하면서 코드를 작성하기보다는
// - 문제를 직관적으로 가장 쉽게 풀이할 수 있는 방법을 찾고
// - 그 다음 복잡도를 고려하면서 코드를 작성하는 편이 좋을 듯.
