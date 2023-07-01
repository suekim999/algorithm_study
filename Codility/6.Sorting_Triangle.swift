import Foundation
import Glibc

// 1. Correctness: 100%, Performance: 100%
// 시간복잡도: O(N*log(N))
// filter의 시간복잡도 - O(N)   내용물 하나하나 조건에 맞는지 확인하기 때문
// sorted() 시간복잡도 - O(N logN)
public func solution(_ A : inout [Int]) -> Int {
    var A = A.filter {  $0 > 0 }.sorted() // 배열 A에 음수도 있을 수 있음
    while A.count >= 3 {
        let front = A.prefix(2).reduce(0, +)
        if (A.suffix(A.count - 2).filter { $0 < front }).isEmpty {
            A.removeFirst()
        } else {
            return 1
        }
    }

    return 0

}

// filter에다가 바로 sorted()를 하면 N제곱 logN이 된다고 생각해서 처음에는
// filter하고 밑에 sort()를 했었음
// 이렇게 하면 N이고 NlogN이기 때문에 결과적으로 시간 복잡도 NlogN이라고 생각했음

// 근데 filter에 sorted()를 하면 N제곱 logN이 되는게 아니라
// 그냥 처음 생각했던것을 붙여서 코드를 작성한거였음,,ㅎ
