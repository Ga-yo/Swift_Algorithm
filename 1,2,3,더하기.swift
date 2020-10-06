//
//  main.swift
//  1로만들기
//
//  Created by 이가영 on 2020/10/06.
//

import Foundation

func plus() -> Int{
    var d = [Int](repeating: 0, count: 1000)
    let n = readLine().map { Int($0)! }!
    
    if n > 11 {
        return 0
    }
    
    d[1] = 1
    d[2] = 2
    d[3] = 4
    
    if n == 1 {
        return 1
    }
    if n == 2 {
        return 3
    }
    if n == 3 {
        return 4
    }
    if n != 0 {
        for i in 4...n {
            d[i] = d[i-1] + d[i-2] + d[i-3]
        }
    }
    
    return d[n]
}

print(plus())
