import UIKit

var str = "Hello, playground"

solution("01023453456")
func solution(_ phone_number:String) -> String {
    
    var answer: String = String()
    
    for _ in 0..<phone_number.count - 4{
        answer += "*"
    }
    
    answer += phone_number.suffix(4)
    //String의 앞쪽 혹은 뒷쪽에 찾고자 하는 문자가 있는지를 확인할 수 있도록 해주는 메소드
    
    return answer
}
