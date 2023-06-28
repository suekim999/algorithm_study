import Foundation
import Glibc

// 1. 첫 풀이
public func solution(_ N : Int) -> Int {
    
    let str = String(N, radix: 2)
    var bool: Bool = true
    var count: Int = 0
    var result: [Int] = [0]

    
    for c in str {
        if c == "1" {
            bool.toggle()
        } else {
            count += 1
        }

        if bool {
            result.append(count)
            count = 0
            bool = false
        }

    }

    return result.max()!

}

// 2.
public func solution(_ N : Int) -> Int {
    
    let str = String(N, radix: 2)
    var count: Int = 0
    var result = 0

    
    for c in str {
        if c == "1" {
            result = max(result, count)
            count = 0
        } else {
            count += 1
        }

    }

    return result

}

/*
 1번 풀이와 2번 풀이의 차이점
 - 1번은 "1"을 만날 때마다 result 배열에 count 할당
   - 처음 풀 때, 0 다음에 나타나는 "1"을 bool로 구별해줘야 한다는 생각이 들었음
 - 2번은 "1"을 만날 때마다 최대값을 넣어줌

 */
