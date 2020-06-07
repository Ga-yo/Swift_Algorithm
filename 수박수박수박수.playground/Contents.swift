import UIKit

var str = "Hello, playground"

solution(5)

func solution(_ n:Int) -> String {

    var arr = ""

    for i in 0..<n{
        if i%2 == 0{
            //짝수
            arr += "수"

        }else{
            //홀수
            arr += "박"
        }
    }

    return arr
}
