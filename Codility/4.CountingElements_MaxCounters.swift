import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 60%
// max()의 시간복잡도 : O(N)
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

// 2. Correctness: 100%, Performance: 80%
// 시간복잡도: O(N + M)
// 1번에서의 시간복잡도를 줄이기 위해서 큰 값을 따로 변수로 빼서 계속 업데이트함
// extreme_large all max_counter operations case에서 계속 런타임 에러
public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var result: [Int] = Array(repeating: 0, count: N)
    var largest: Int = 0

    for num in A {
        switch num {
            case 1...N:
            result[num - 1] += 1
            largest = max(largest, result[num - 1])
            default:
            result = Array(repeating: largest, count: N)
        }
    }

    return result
}

// 3. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N + M)
// 사실 2번의 실패 사례를 참고해서 가능한 경우를 좀 더 구체적으로 나눴음
// 가능한 경우의 수를 따져보고 미리 처리할 수 있는 부분은 따로 빼주는게 처리 속도면에서는
// 필요할 수도 있겠다 싶었음
public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var result: [Int] = Array(repeating: 0, count: N)
    var largest: Int = 0

    // 전체 다 maxCounter
    guard (A.filter{ $0 > N }).count != A.count else { return result }

    // 전체 다 동일 숫자인 경우
    if Set(A).count == 1 {
        switch A.first! {
            case 1...N: result[A.first! - 1] = A.count
            default: break
        }
        return result
    }

    // 1...N, N+1 다 섞인 경우
    for num in A {
        switch num {
            case 1...N:
            result[num - 1] += 1
            largest = max(largest, result[num - 1])
            default:
            result = Array(repeating: largest, count: N)
        }
    }

    return result
}
