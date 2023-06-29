import Foundation
import Glibc


public func solution(_ A : inout [Int], _ K : Int) -> [Int] {

    guard !A.isEmpty else { return [] }
    // 0으로 나눌 수 없기 때문에 A가 비어있을 경우를 따로 빼줌
    let s = K % A.count

    return A.suffix(s) + A.prefix(A.count - s)

}
