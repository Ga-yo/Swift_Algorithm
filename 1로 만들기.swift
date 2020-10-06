//
//  main.swift
//  1로만들기
//
//  Created by 이가영 on 2020/10/06.
//

import Foundation

var input = readLine()
var d = [Int](repeating: 0, count: 1000000)
var num = Int()

if let input = input {
    num = Int(input)!
}

for i in 2...num + 1 {
    
    d[i] = d[i-1] + 1
    if i % 2 == 0 {
        d[i] = min(d[i], d[i/2] + 1)
    }
    if i % 3 == 0 {
        d[i] = min(d[i], d[i/3] + 1)
    }
    
}

print(d[num])
