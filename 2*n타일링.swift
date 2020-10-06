//
//  2*n타일링.swift
//  1로만들기
//
//  Created by 이가영 on 2020/10/06.
//

import Foundation

func tailing() -> Int{
    var d = [Int](repeating: 0, count: 1001)
    let n = readLine().map({Int($0)!})!

    d[1] = 1
    d[2] = 2
    
    if n == 1 {
        return 1
    }
    if n == 2 {
        return 2
    }
    if n != 0 {
        for i in 3...n {
            d[i] = (d[i-1] + d[i-2]) % 10007
        }
    }
    return d[n]
}

print(tailing())
