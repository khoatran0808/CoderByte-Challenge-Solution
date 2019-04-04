//
//  ViewController.swift
//  CODERBYTE SOLUTIONS
//
//  Created by Luci on 4/4/19.
//  Copyright © 2019 Tran cong khoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
// CHALLENGE 1
        print(LongestWord(""))
// CHALLENGE 2
        print(FirstFactorial(8))
// CHALLENGE 3
        print(FirstReverse("coderbyte"))
// CHALLENGE 4
        print(LetterChanges("hello*3"))
// CHALLENGE 5
        print(SimpleAdding(12))
// CHALLENGE 6
        print(LetterCapitalize("hello world"))
// CHALLENGE 7
        print(SimpleSymbols("+d+=3=+s+"))
// CHALLENGE 8
        print(CheckNums(3, 122))
// CHALLENGE 9
        print(TimeConvert(126))
// CHALLENGE 10
        print(AlphabetSoup("coderbyte"))
// CHALLENGE 11
        print(KaprekarsConstant(2111))
// CHALLENGE 12
        print(ChessboardTraveling("(1 1)(3 3)"))
        
        
        
// _______________________________________________________________________________________________________________
        
// TH1 : Lấy giai thừa của 1 số vd: 4! = 4x3x2x1
        print(TH1(4))
        
        
        
        
    }
    
    
    
    
// _______________________________________________________________________________________________________________
//CHALLENGE 1 - Have the function LongestWord(sen) take the sen parameter being passed and return the largest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty. 
//    Input:"fun&!! time"
//    Output:"time"
//
//    Input:"I love dogs"
//    Output:"love"
    func LongestWord(_ sen: String) -> String {
        let notCharacter = NSCharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").inverted
        let A = sen
        let B = A.components(separatedBy:notCharacter)
        let C = B.filter{$0 != ""}
        let D = C.joined(separator: " ")
        return D
    }
}
// CHALLENGE 2 - Have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it. For example: if num = 4, then your program should return (4 * 3 * 2 * 1) = 24. For the test cases, the range will be between 1 and 18 and the input will always be an integer.
//    Input:4
//    Output:24
//
//    Input:8
//    Output:40320
    func FirstFactorial(_ num: Int) -> Int {
        let A : Int = num
        var B = [Int] ()
        var C : Int
        for n in 1...A {
            B.append(n)
        }
        C = B.reduce(1, *)
        return C
    }
// CHALLENGE 3 - Have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order. For example: if the input string is "Hello World and Coders" then your program should return the string sredoC dna dlroW olleH.
//    Input:"coderbyte"
//    Output:"etybredoc"
//
//    Input:"I Love Code"
//    Output:"edoC evoL I"
    func FirstReverse(_ str: String) -> String {
        let A: String = str
        let B = Array(A)
        var C = [String.Element] ()
        for n in 1...B.count {
            C.append(B[B.count - n])
        }
        let D = String(C)
        return D
    }
// CHALLENGE 4 - Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string.
//    Input:"hello*3"
//    Output:"Ifmmp*3"
//
//    Input:"fun times!"
//    Output:"gvO Ujnft!"
    func LetterChanges(_ str: String) -> String {
        let A = str
        var B = [UInt8] ()
        var C = [String] ()
        for n in A.utf8 {
            if (n <= 90 && n >= 65) || (n <= 122 && n >= 97) {
                if n == 100 || n == 104 || n == 110 || n == 116 || n == 122 {
                    B.append(n - 31)
                }
                else {
                    B.append(n + 1)
                }
            }
            else {
                B.append(n)
            }
        }
        for n in B {
            let A1 = UnicodeScalar(n)
            let B1 = Character (A1)
            let C1 = String (B1)
            C.append(C1)
        }
        let D = C.joined(separator: "")
        return D
}
// CHALLENGE 5 - Have the function SimpleAdding(num) add up all the numbers from 1 to num. For example: if the input is 4 then your program should return 10 because 1 + 2 + 3 + 4 = 10. For the test cases, the parameter num will be any number from 1 to 1000.
//    Input:12
//    Output:78
//
//    Input:140
//    Output:9870
    func SimpleAdding(_ num: Int) -> Int {
        let A = num
        var B = [Int] ()
        for n in 1...A {
            B.append(n)
        }
        let C = B.reduce( 0, {(x: Int, y: Int) -> Int in return x + y
        })
        return C
    }
// CHALLENGE 6 - Have the function LetterCapitalize(str) take the str parameter being passed and capitalize the first letter of each word. Words will be separated by only one space.
//    Input:"hello world"
//    Output:"Hello World"
//
//    Input:"i ran there"
//    Output:"I Ran There"
    func LetterCapitalize(_ str: String) -> String {
        let A = str
        let B = A.capitalized
        return B
    }
// CHALLENGE 7 - Have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an acceptable sequence by either returning the string true or false. The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. So the string to the left would be false. The string will not be empty and will have at least one letter.
//    Input:"+d+=3=+s+"
//    Output:"true"
//
//    Input:"f++d+"
//    Output:"false"
    func SimpleSymbols(_ str: String) -> String{
        let A = str
        let B = "+=\(A)=+"
        let C = B.components(separatedBy:CharacterSet.letters)
        var E = [Int] ()
        for n in C {
            if n.hasPrefix("+") && n.hasSuffix("=") || n.hasPrefix("=") && n.hasSuffix("+") || n.hasPrefix("=") && n.hasSuffix("="){
                E.append(0)
            } else {
                E.append(1)
            }
        }
        return E.contains(0) ? "false" : "true"
    }
// CHALLENGE 8 - Have the function CheckNums(num1,num2) take both parameters being passed and return the string true if num2 is greater than num1, otherwise return the string false. If the parameter values are equal to each other then return the string -1.
//    Input:3 & num2 = 122
//    Output:"true"
//
//    Input:67 & num2 = 67
//    Output:"-1"
    func CheckNums(_ num1: Int, _ num2: Int) -> String {
        if num2 > num1 {
            return "true"
        } else if num1 == num2 {
            return "-1"
        } else {
            return "false"
        }
    }
// CHALLENGE 9 - Have the function TimeConvert(num) take the num parameter being passed and return the number of hours and minutes the parameter converts to (ie. if num = 63 then the output should be 1:3). Separate the number of hours and minutes with a colon.
//    Input:126
//    Output:"2:6"
//
//    Input:45
//    Output:"0:45"
    func TimeConvert(_ num: Int) -> String {
        let XX = num
        let YY = 60
        let A = XX / YY
        let B = XX % YY
        return "\(A):\(B)"
    }
// CHALLENGE 10 - Have the function AlphabetSoup(str) take the str string parameter being passed and return the string with the letters in alphabetical order (ie. hello becomes ehllo). Assume numbers and punctuation symbols will not be included in the string.
//    Input:"coderbyte"
//    Output:"bcdeeorty"
//
//    Input:"hooplah"
//    Output:"ahhloop"
    func AlphabetSoup(_ str: String) -> String {
        let A = str
        var B = [Int] ()
        var D = [String] ()
        for n in A.utf8 {
            B.append(Int(n))
        }
        let E = B.sorted { (a,b) -> Bool in return
            a < b
        }
        for n in E {
            let C = UnicodeScalar(n)
            let F = String(Character(C!))
            D.append(F)
        }
        let F = D.joined(separator: "")
        return F
    }
// CHALLENGE 11 -  Have the function KaprekarsConstant(num) take the num parameter being passed which will be a 4-digit number with at least two distinct digits. Your program should perform the following routine on the number: Arrange the digits in descending order and in ascending order (adding zeroes to fit it to a 4-digit number), and subtract the smaller number from the bigger number. Then repeat the previous step. Performing this routine will always cause you to reach a fixed number: 6174. Then performing the routine on 6174 will always give you 6174 (7641 - 1467 = 6174). Your program should return the number of times this routine must be performed until 6174 is reached. For example: if num is 3524 your program should return 3 because of the following steps: (1) 5432 - 2345 = 3087, (2) 8730 - 0378 = 8352, (3) 8532 - 2358 = 6174.
//    Input:2111
//    Output:5
//
//    Input:9831
//    Output:7
    func KaprekarsConstant(_ num: Int) -> Int {
        var Times = 0
        var A = num
        while (A != 6174) {
            
            let A1 = Array(String(A))
            
            let A2 = A1.sorted{(a,b) -> Bool in return a > b}
            let C1 = String(A2)
            let D1 = Int(C1)
            
            let B2 = A1.sorted{(a,b) -> Bool in return a < b}
            let C2 = String(B2)
            let D2 = Int(C2)
            
            if Array(String(D1! - D2!)).count == 4 {
                A = D1! - D2!
            } else if Array(String(D1! - D2!)).count == 3 {
                A = (D1! - D2!) * 10
            } else if Array(String(D1! - D2!)).count == 2 {
                A = (D1! - D2!) * 100
            } else {
                A = (D1! - D2!) * 1000
            }
            Times += 1
        }
        return Times
    }
// CHALLENGE 12 - Have the function ChessboardTraveling(str) read str which will be a string consisting of the location of a space on a standard 8x8 chess board with no pieces on the board along with another space on the chess board. The structure of str will be the following: "(x y)(a b)" where (x y) represents the position you are currently on with x and y ranging from 1 to 8 and (a b) represents some other space on the chess board with a and b also ranging from 1 to 8 where a > x and b > y. Your program should determine how many ways there are of traveling from (x y) on the board to (a b) moving only up and to the right. For example: if str is (1 1)(2 2) then your program should output 2 because there are only two possible ways to travel from space (1 1) on a chessboard to space (2 2) while making only moves up and to the right.
//    Input:"(1 1)(3 3)"
//    Output:6
//
//    Input:"(2 2)(4 3)"
//    Output:3
    func ChessboardTraveling(_ str: String) -> Int {
        let A = str
        let B = A.components(separatedBy: CharacterSet.decimalDigits.inverted)
        let C = B.compactMap{Int($0)}
        let row = C[2] - C[0]
        let col = C[3] - C[1]
        func calculator (_ n : Int) -> Int {
            if n > 1 {
                let x = n * calculator(n - 1)
                return x
            } else {
                let x = n
                return x
            }
        }
        let D = calculator(row + col) / (calculator(row) * calculator(col))
        return D
    }




// _______________________________________________________________________________________________________________

// TH1 : Lấy giai thừa của 1 số vd: 4! = 4x3x2x1
func TH1 (_ n :Int) -> Int {
    return (n > 1) ? n * TH1(n - 1) : 1
}
