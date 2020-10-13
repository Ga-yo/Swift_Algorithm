//
//  main.swift
//  1로만들기
//
//  Created by 이가영 on 2020/10/06.
//

import Foundation

func easyStair() -> CLong {
    var d: [[CLong]] = Array(repeating: Array(repeating: 0,count: 2 ), count: 91)
    let n = readLine().map { Int($0)! }!
    
    d[1][0] = 0
    d[1][1] = 1
    
    if n == 1 {
        return 1
    }
    
    for i in 2...n {
        d[i][0] = d[i-1][0] + d[i-1][1]
        d[i][1] = d[i-1][0]
    }
    
    return d[n][1] + d[n][0]
}

print(easyStair())
