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
//// CHALLENGE 1
//        print(LongestWord(""))
//// CHALLENGE 2
//        print(FirstFactorial(8))
//// CHALLENGE 3
//        print(FirstReverse("coderbyte"))
//// CHALLENGE 4
//        print(LetterChanges("hello*3"))
//// CHALLENGE 5
//        print(SimpleAdding(12))
//// CHALLENGE 6
//        print(LetterCapitalize("hello world"))
//// CHALLENGE 7
//        print(SimpleSymbols("+d+=3=+s+"))
//// CHALLENGE 8
//        print(CheckNums(3, 122))
//// CHALLENGE 9
//        print(TimeConvert(126))
//// CHALLENGE 10
//        print(AlphabetSoup("coderbyte"))
//// CHALLENGE 11
//        print(KaprekarsConstant(2111))
//// CHALLENGE 12
//        print(ChessboardTraveling("(1 1)(3 3)"))
//// CHALLENGE 13
//        print(MaximalSquare(["01001", "11111", "01011", "11111", "01111", "11111"]))
//// CHALLENGE 14
//        print(PentagonalNumber(5))
//// CHALLENGE 15
//        print(CorrectPath("dddd?uuuurrr????"))
//// CHALLENGE 16
//        print(VowelSquare(["aqrst", "ukaei", "ffooo"]))
//// CHALLENGE 17
//        print(ClosestEnemyII(["0000", "2010", "0000", "2002"]))
// CHALLENGE 18
        print(QuestionsMarks("acc?7??sss?3rr1??????5"))
// CHALLENGE 19
        print(EightQueens(["(2,1)", "(4,3)", "(6,3)", "(8,4)", "(3,4)", "(1,6)", "(7,7)", "(5,8)"]))
        
        
// _______________________________________________________________________________________________________________
        
//// TH1 : Lấy giai thừa của 1 số vd: 4! = 4x3x2x1
//        print(TH1(4))
        
        
        
        
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
// CHALLENGE 13 - Have the function MaximalSquare(strArr) take the strArr parameter being passed which will be a 2D matrix of 0 and 1's, and determine the area of the largest square submatrix that contains all 1's. A square submatrix is one of equal width and height, and your program should return the area of the largest submatrix that contains only 1's. For example: if strArr is ["10100", "10111", "11111", "10010"] then this looks like the following matrix:
//    1 0 1 0 0
//    1 0 1 1 1
//    1 1 1 1 1
//    1 0 0 1 0
//    For the input above, you can see the bolded 1's create the largest square submatrix of size 2x2, so your program should return the area which is 4. You can assume the input will not be empty.
//    Input:["0111", "1111", "1111", "1111"]
//    Output:9
//
//    Input:["0111", "1101", "0111"]
//    Output:1
func MaximalSquare(_ strArr: [String]) -> String {
    //     var strArr = ["00000","00000","11111","11111"]
    //func MaximalSquare(_ strArr: [String]) -> String {
    //    let matrix = [[1, 1, 1, 1, 1],
    //                  [1, 1, 1, 1, 1],
    //                  [1, 1, 1, 1, 1],
    //                  [1, 1, 1, 0, 0]]
    var matrix: [[Int]] = []
    var giatritrunggian = false
    var final = ""
    for m in strArr {
        var B: [Int] = []
        for (_ , b) in m.enumerated() {
            B.append(Int(String(b))!)
        }
        matrix.append(B)
    }
    let maxValueSuperMaxConstain = min(matrix.count, matrix.first!.count)
    let maxValue = min(matrix.count, matrix.first!.count) // 4
    var maxSizefixed = maxValue
    if matrix.first!.count > matrix.count {
    while maxValue > 0 && giatritrunggian == false {
        var check = [Bool] ()
        if maxSizefixed == 1 {
            final = String(maxSizefixed * maxSizefixed)
            //        print(final)
            break
        }
        for i in 0 ..< maxValueSuperMaxConstain - maxSizefixed + 1 { // 0
            //            print("i là \(i)")
            for j in 0 ..< matrix.first!.count - maxSizefixed + 1 { // 0 1
                //                print("j là \(j)")
                for ii in 0 ..< maxSizefixed { // 0 - 3
                    // print("ii là \(ii)")
                    for jj in 0 ..< maxSizefixed { // 0 - 3
                        //                        print(jj)
                        // print("jj là \(jj)")
                        //                        print("\(j + jj)")
                        
                        //                        print(matrix[i + ii][j + jj] == 0)
                        if matrix[i + ii][j + jj] == 0 {
                            check.append(false)
                        }
                        if matrix[i + ii][j + jj] == 1 {
                            check.append(true)
                        }
                    }
                }
                // print(check)
                if check.contains(false) {
                    //                    print("SAI BÉT RỒI")
                    check.removeAll()
                } else {
                    //                    print("CHÍNH XÁC !!!!!!!!!!!!!!!!!!!!!!!")
                    giatritrunggian = true
                    check.removeAll()
                    final = String(maxSizefixed * maxSizefixed)
                    //                    print("kết quả cuối cùng là \(final)")
                    break
                }
            }
        }
        if giatritrunggian == true {
            break
        }
        if giatritrunggian == false {
            maxSizefixed = maxSizefixed - 1
            //    print("HẾT MỘT LẦN - maxSizefixed mới là \(maxSizefixed)")
        }
    }
    final = String(maxSizefixed * maxSizefixed)
    //print("kết quả cuối cùng là \(final)")
    return final
}
    else {
        while maxValue > 0 && giatritrunggian == false {
            var check = [Bool] ()
            if maxSizefixed == 1 {
                final = String(maxSizefixed * maxSizefixed)
                //        print(final)
                break
            }
            for i in 0 ..< matrix.count - maxSizefixed + 1 { // 0
                //            print("i là \(i)")
                for j in 0 ..< maxValueSuperMaxConstain - maxSizefixed + 1 { // 0 1
                    //                print("j là \(j)")
                    for ii in 0 ..< maxSizefixed { // 0 - 3
                        // print("ii là \(ii)")
                        for jj in 0 ..< maxSizefixed { // 0 - 3
                            //                        print(jj)
                            // print("jj là \(jj)")
                            //                        print("\(j + jj)")
                            
                            //                        print(matrix[i + ii][j + jj] == 0)
                            if matrix[i + ii][j + jj] == 0 {
                                check.append(false)
                            }
                            if matrix[i + ii][j + jj] == 1 {
                                check.append(true)
                            }
                        }
                    }
                    // print(check)
                    if check.contains(false) {
                        //                    print("SAI BÉT RỒI")
                        check.removeAll()
                    } else {
                        //                    print("CHÍNH XÁC !!!!!!!!!!!!!!!!!!!!!!!")
                        giatritrunggian = true
                        check.removeAll()
                        final = String(maxSizefixed * maxSizefixed)
                        //                    print("kết quả cuối cùng là \(final)")
                        break
                    }
                }
            }
            if giatritrunggian == true {
                break
            }
            if giatritrunggian == false {
                maxSizefixed = maxSizefixed - 1
                //    print("HẾT MỘT LẦN - maxSizefixed mới là \(maxSizefixed)")
            }
        }
        final = String(maxSizefixed * maxSizefixed)
        //print("kết quả cuối cùng là \(final)")
        return final
    }
}
// CHALLENGE 14 - Have the function PentagonalNumber(num) read num which will be a positive integer and determine how many dots exist in a pentagonal shape around a center dot on the Nth iteration. For example, in the image below you can see that on the first iteration there is only a single dot, on the second iteration there are 6 dots, on the third there are 16 dots, and on the fourth there are 31 dots.
//    Input:2
//    Output:6
//
//    Input:5
//    Output:51
    func PentagonalNumber(_ num: Int) -> Int {
        var A = [Int] ()
        let B = num
        for n in 1..<B {
            A.append(n)
            // print(A)
        }
        let C = A.map {$0 * 5}
        let D = C.reduce (1) {$0 + $1}
        // print(C)
        return D
    }
// CHALLENGE 15 - Have the function CorrectPath(str) read the str parameter being passed, which will represent the movements made in a 5x5 grid of cells starting from the top left position. The characters in the input string will be entirely composed of: r, l, u, d, ?. Each of the characters stand for the direction to take within the grid, for example: r = right, l = left, u = up, d = down. Your goal is to determine what characters the question marks should be in order for a path to be created to go from the top left of the grid all the way to the bottom right without touching previously travelled on cells in the grid.

//    For example: if str is "r?d?drdd" then your program should output the final correct string that will allow a path to be formed from the top left of a 5x5 grid to the bottom right. For this input, your program should therefore return the string rrdrdrdd. There will only ever be one correct path and there will always be at least one question mark within the input string.
//    Sample Test Cases
//    Input:"???rrurdr?"
//    Output:"dddrrurdrd"
//
//    Input:"drdr??rrddd?"
//    Output:"drdruurrdddd"
func CorrectPath(_ str: String) -> String {
    let X = str
    var A = 0
    var B = 0
    let Y = X.components(separatedBy: CharacterSet.letters.inverted).flatMap{$0}
    // CÁCH 2 THAY VÌ DÒNG CODE TRÊN
//    var aaa = "drdr??rrddd?"
//    var bbb = aaa.map {String($0)}
//    for m in 0..<bbb.count {
//        if bbb[m] == "?" {
//            bbb[m] = ""
//            print(bbb)
//        }
//    }
//    var ccc = bbb.flatMap({$0})
//    print(ccc)
    
    //print(Y)
    var Z = 0
    for m in X {
        if m == "?" {
            Z += 1
        }
    }
    //print(Z)
    var u = 0
    var d = 0
    var r = 0
    var l = 0
    for m in Y {
        if m == "u" {
            u += 1
        } else if m == "d" {
            d += 1
        } else if m == "r" {
            r += 1
        } else if m == "l" {
            l += 1
        }
    }
    A = d - u
    B = r - l
    var BB = [String] ()
    while true {
        if 4 - A > 0 {
            //        print("Cần thêm \(4 - A) d")
            BB.append("d")
            A += 1
        } else if 4 - A < 0 {
            //        print("Cần thêm \(A - 4) u ")
            BB.append("u")
            A -= 1
        } else if 4 - B > 0 {
            //        print("Cần thêm \(4 - B) l ")
            BB.append("l")
            B += 1
        } else if 4 - B < 0 {
            //        print("Cần thêm \(B - 4) r ")
            BB.append("r")
            B -= 1
        } else if 4 - A == 0 && 4 - B == 0 && BB.count != Z {
            BB.append("u")
            BB.append("d")
        }
        if BB.count == Z {break}
    }
    //print(BB)
    var AA = X.map {String($0)}
    for n in 0..<AA.count {
        if AA[n] == "?" {
            AA[n] = BB.first!
            BB.removeFirst()
            //            print(AA)
            //            print(BB)
        }
    }
    //print(AA)
    return AA.joined()
}
// CHALLENGE 16 - Have the function VowelSquare(strArr) take the strArr parameter being passed which will be a 2D matrix of some arbitrary size filled with letters from the alphabet, and determine if a 2x2 square composed entirely of vowels exists in the matrix. For example: strArr is ["abcd", "eikr", "oufj"] then this matrix looks like the following:

//a b c d
//e i k r
//o u f j
//
//Within this matrix there is a 2x2 square of vowels starting in the second row and first column, namely, ei, ou. If a 2x2 square of vowels is found your program should return the top-left position (row-column) of the square, so for this example your program should return 1-0. If no 2x2 square of vowels exists, then return the string not found. If there are multiple squares of vowels, return the one that is at the most top-left position in the whole matrix. The input matrix will at least be of size 2x2.
//Sample Test Cases
//Input:["aqrst", "ukaei", "ffooo"]
//Output:"1-2"
//
//Input:["gg", "ff"]
//Output:"not found"
func VowelSquare(_ strArr: [String]) -> String {
    //var A = ["aqrst", "ukaei", "ffooo"]
    let A = strArr
    var B = [[String]] ()
    for n in A {
        let C = n.map{String($0)}.compactMap{String($0)}
        B.append(C)
        //print(B)
    }
    var D = [[String]] ()
    for m in B {
        var XX = m.map{String($0)}
        for n in 0..<XX.count {
            if XX[n] == "a" || XX[n] == "e" || XX[n] == "i" || XX[n] == "o" || XX[n] == "u" {
                XX[n] = "1"
            } else {
                XX[n] = "0"
            }
        }
        D.append(XX)
    }
    //print(D)
    //[["1", "0", "0", "0", "0"],
    // ["1", "0", "1", "1", "1"],
    // ["0", "0", "1", "1", "1"]]
    
    let maxSizeSuper = min(D.count, D.first!.count)
    let maxSize = 2
    var check = [Bool] ()
    var toado = [String] ()
    var ketquacuoicung = ""
    if D.first!.count > D.count {
        for i in 0..<maxSizeSuper - maxSize + 1 {
            //    print("i là \(i)")
            for j in 0..<D.first!.count - maxSize + 1 {
                //        print(j)
                for ii in 0 ... 1 {
                    for jj in 0 ... 1 {
                        if D[ii + i][jj + j] == "0" {
                            check.append(false)
                            toado.append("\(ii + i)-\(jj + j)")
                        } else {
                            check.append(true)
                            toado.append("\(ii + i)-\(jj + j)")
                        }
                    }
                    //            print("\(check)")
                }
                if check.contains(false) {
                    //                                print("SAI BÉT RỒI")
                    check.removeAll()
                    toado.removeAll()
                } else {
                    //                                print("CHÍNH XÁC !!!!!!!!!!!!!!!!!!!!!!!")
                    check.removeAll()
                    ketquacuoicung = toado[0]
                    toado.removeAll()
                    break
                }
            }
        }
        //print(ketquacuoicung)
        if ketquacuoicung == "" {
            return "not found"
        } else {
            return ketquacuoicung
        }
    }
    else {
        for i in 0..<D.count - maxSize + 1 {
            //    print("i là \(i)")
            for j in 0..<maxSizeSuper - maxSize + 1 {
                //        print(j)
                for ii in 0 ... 1 {
                    for jj in 0 ... 1 {
                        if D[ii + i][jj + j] == "0" {
                            check.append(false)
                            toado.append("\(ii + i)-\(jj + j)")
                        } else {
                            check.append(true)
                            toado.append("\(ii + i)-\(jj + j)")
                        }
                    }
                    //            print("\(check)")
                }
                if check.contains(false) {
                    //                                print("SAI BÉT RỒI")
                    check.removeAll()
                    toado.removeAll()
                } else {
                    //                                print("CHÍNH XÁC !!!!!!!!!!!!!!!!!!!!!!!")
                    check.removeAll()
                    ketquacuoicung = toado[0]
                    toado.removeAll()
                    break
                }
            }
        }
        //print(ketquacuoicung)
        if ketquacuoicung == "" {
            return "not found"
        } else {
            return ketquacuoicung
        }
    }
}
// CHALLENGE 17 - Have the function ClosestEnemyII(strArr) read the matrix of numbers stored in strArr which will be a 2D matrix that contains only the integers 1, 0, or 2. Then from the position in the matrix where a 1 is, return the number of spaces either left, right, down, or up you must move to reach an enemy which is represented by a 2. You are able to wrap around one side of the matrix to the other as well. For example: if strArr is ["0000", "1000", "0002", "0002"] then this looks like the following:
//
//    0 0 0 0
//    1 0 0 0
//    0 0 0 2
//    0 0 0 2
//
//    For this input your program should return 2 because the closest enemy (2) is 2 spaces away from the 1 by moving left to wrap to the other side and then moving down once. The array will contain any number of 0's and 2's, but only a single 1. It may not contain any 2's at all as well, where in that case your program should return a 0.
//    Sample Test Cases
//    Input:["000", "100", "200"]
//    Output:1
//
//    Input:["0000", "2010", "0000", "2002"]
//    Output:2
func ClosestEnemyII(_ strArr: [String]) -> Int {
//    var A =  ["000", "100", "200"]
    //["01000",
    // "00020",
    // "00000",
    // "00002",
    // "02002"]
    var B = [[String]] ()
    var ketqua = 0
    //for n in A {
    for n in strArr {
        let C = n.map{String($0)}.compactMap{String($0)}
        B.append(C)
    }
    var B1 = B
    //print(B)
    //[["0", "0", "0", "0", "0", "0", "0"],
    // ["0", "0", "0", "1", "0", "0", "0"],
    // ["0", "0", "0", "0", "0", "0", "0"],
    // ["0", "0", "0", "0", "0", "0", "0"],
    // ["0", "0", "0", "0", "0", "0", "0"],
    // ["2", "0", "0", "0", "0", "0", "0"],
    // ["0", "0", "0", "0", "0", "0", "0"]]
    
    var check1 = false
    var check2 = [Bool] ()
    var check3 = [Bool] ()
    for m in 0..<B.count {
        for n in 0..<B.first!.count {
            if B[m][n] == "1" {
                check2.append(true)
            } else if B[m][n] != "1" {
                check2.append(false)
            }
            if B[m][n] == "2" {
                check3.append(true)
            } else {
                check3.append(false)
            }
        }
    }
    //print(check2.contains(true))
    //print(check3.contains(true))
    
    for m in 0..<B.count {
        for n in 0..<B.first!.count {
            
            if (B[m][n] == "1" && B[m][(B.first!.count - n - 1)] == "2") || (B[m][n] == "1" && B[B.count - m - 1][(n)] == "2") {
                ketqua = 1
                break
            } else if !check2.contains(true) || !check3.contains(true) {
                ketqua = 0
                check1 = true
                break
            }
        }
        if ketqua != 0 || check1 == true {
            break
        }
    }
    var toado1 = [Int]()
    var toado2 = [Int]()
    for i in 0..<B.count {
        for j in 0..<B.first!.count {
            if B[i][j] == "1" {
                toado1.append(Int("\(i)")!)
                toado1.append(Int("\(j)")!)
            }
        }
    }
    for i in 0..<B.count {
        for j in 0..<B.first!.count {
            if B[i][j] == "2" {
                if toado1 != [Int]() {
                    toado2.append(abs(Int("\(i)")! - toado1[0]) + abs(Int("\(j)")! - toado1[1]))}
            }
        }
    }
    //print(toado1)
    //print(toado2)
    var superMinimum = 10000000
    if toado2 != [Int]() {
        superMinimum = toado2.min()!
    }
    //------------------------------------------------------------------------------------------------
    var fixedMinimum1 = 0
    for m in 0..<B.count {
        for n in 0..<B.first!.count {
            if B[m][n] == "1" {
                B[m][n] = "0"
                B[m][(B.first!.count - 1)] = "1"
                fixedMinimum1 = n + 1
                break
            }
            if fixedMinimum1 != 0 {
                break
            }
        }
        if fixedMinimum1 != 0 {
            break
        }
    }
    //    print(B)
    var toado3 = [Int]()
    var toado4 = [Int]()
    for i in 0..<B.count {
        for j in 0..<B.first!.count {
            if B[i][j] == "1" {
                toado3.append(Int("\(i)")!)
                toado3.append(Int("\(j)")!)
            }
        }
    }
    for i in 0..<B.count {
        for j in 0..<B.first!.count {
            if B[i][j] == "2" {
                if toado3 != [Int]() {
                    toado4.append(abs(Int("\(i)")! - toado3[0]) + abs(Int("\(j)")! - toado3[1]))}
            }
        }
    }
    //    print(toado3)
    //    print(toado4)
    var superMinimum1 = 10000000
    if toado4 != [Int]() {
        superMinimum1 = toado4.min()! + fixedMinimum1
    }
    ////------------------------------------------------------------------------------------------------
    var fixedMinimum2 = 0
    for m in 0..<B1.count {
        for n in 0..<B1.first!.count {
            if B1[m][n] == "1" {
                B1[m][n] = "0"
                B1[B1.count - 1][n] = "1"
                fixedMinimum2 = m + 1
                break
            }
            if fixedMinimum2 != 0 {
                break
            }
        }
        if fixedMinimum2 != 0 {
            break
        }
    }
    //    print(B1)
    var toado5 = [Int]()
    var toado6 = [Int]()
    for i in 0..<B1.count {
        for j in 0..<B1.first!.count {
            if B1[i][j] == "1" {
                toado5.append(Int("\(i)")!)
                toado5.append(Int("\(j)")!)
            }
        }
    }
    for i in 0..<B1.count {
        for j in 0..<B1.first!.count {
            if B1[i][j] == "2" {
                if toado5 != [Int]() {
                    toado6.append(abs(Int("\(i)")! - toado5[0]) + abs(Int("\(j)")! - toado5[1]))}
            }
        }
    }
    //print(toado5)
    //print(toado6)
    var superMinimum2 = 10000000
    if toado6 != [Int]() {
        superMinimum2 = toado6.min()! + fixedMinimum2
    }
    //print(superMinimum2)
    if ketqua != 1 && check1 == false {
        ketqua = min(superMinimum,superMinimum1,superMinimum2)
        //                        print(ketqua)
    }
    else if check1 == true {
        ketqua = 0
    }
    else {
        ketqua = 1
    }
    return ketqua
}
// CHALLENGE 18 - Have the function QuestionsMarks(str) take the str string parameter, which will contain single digit numbers, letters, and question marks, and check if there are exactly 3 question marks between every pair of two numbers that add up to 10. If so, then your program should return the string true, otherwise it should return the string false. If there aren't any two numbers that add up to 10 in the string, then your program should return false as well.

//    For example: if str is "arrb6???4xxbl5???eee5" then your program should return true because there are exactly 3 question marks between 6 and 4, and 3 question marks between 5 and 5 at the end of the string.
//    Sample Test Cases
//    Input:"aa6?9"
//    Output:false
//
//    Input:"acc?7??sss?3rr1??????5"
//    Output:true

func QuestionsMarks(_ str: String) -> String {
    let A = "acc?77??sss?3rr1??????5"
    let A1 = A.components(separatedBy: CharacterSet.letters).joined()
    let BSet   = Set("0123456789")
    let B = A1.reduce ([""]) {BSet.contains($1) ? ($0 + ["\($1)",""]) : ($0.dropLast() + ["\($0.last!)\($1)"])}
    print(B)
    let C = B.filter {$0 != ""}
    print(C)
    let D = C.reduce([("","","")]) {$0 + [($0.last!.1,$0.last!.2,$1)]}
    print(D)
    let E = D.map {(Int($0),"???",Int($2))}
    print(E)
    let F = E.filter {$0 != nil && $2 != nil}
    print(F)
    let G = F.map {(Int($0!),$1,Int($2!))}
    print(G)
    let H = G.filter {$0 + $2 == 10}
    print(H)
    var ketqua = false
    if H.count > 0 {
        ketqua = true
    }
    return "\(ketqua)"
}
// CHALLENGE 19 - Have the function EightQueens(strArr) read strArr which will be an array consisting of the locations of eight Queens on a standard 8x8 chess board with no other pieces on the board. The structure of strArr will be the following: ["(x,y)", "(x,y)", ...] where (x,y) represents the position of the current queen on the chessboard (x and y will both range from 1 to 8 where 1,1 is the bottom-left of the chessboard and 8,8 is the top-right). Your program should determine if all of the queens are placed in such a way where none of them are attacking each other. If this is true for the given input, return the string true otherwise return the first queen in the list that is attacking another piece in the same format it was provided.

//    For example: if strArr is ["(2,1)", "(4,2)", "(6,3)", "(8,4)", "(3,5)", "(1,6)", "(7,7)", "(5,8)"] then your program should return the string true. The corresponding chessboard of queens for this input is below (taken from Wikipedia).
//
//
//        Sample Test Cases
//        Input:["(2,1)", "(4,3)", "(6,3)", "(8,4)", "(3,4)", "(1,6)", "(7,7)", "(5,8)"]
//        Output:"(2,1)"
//        
//        Input:["(2,1)", "(5,3)", "(6,3)", "(8,4)", "(3,4)", "(1,8)", "(7,7)", "(5,8)"]
//        Output:"(5,3)"
func EightQueens(_ strArr: [String]) -> String
{
    _ = ["(2,1)", "(4,3)", "(6,3)", "(8,4)", "(3,4)", "(1,6)", "(7,7)", "(5,8)"]
    let B = strArr.map {$0.components(separatedBy: CharacterSet.decimalDigits.inverted).filter {$0 != ""}}
    let C = B.map {$0.map {Int($0)!}}
    //print(B)
    //print(C)
    var ketqua = "true"
    var check = false
    for m in 0..<C.count - 1 {
        if check == true {
            break
        }
        //    print("m là \(m) OK")
        let x = C[m][0]
        //    print("x là \(x)")
        let y = C[m][1]
        //    print("y là \(y)")
        for n in m + 1..<C.count - 1 {
            if check == true {
                break
            }
            let x1 = C[n][0]
            //        print("x1:\(x1)")
            let y1 = C[n][1]
            //        print("y1:\(y1)")
            let Best1 = abs(x1 - x)
            let Best2 = abs(y1 - y)
            //        print(abs(x1 - x))
            //        print(abs(y1 - y))
            if Best1 == 0 || Best2 == 0 || Best1 == Best2 { // Trường hợp các quân cờ còn lại nằm cùng hàng || cùng cột || nằm xéo các hướng
                check = true
                ketqua = "(\(x),\(y))"
                break
            }
        }
    }
    //print(ketqua)
    return ketqua
}



// _______________________________________________________________________________________________________________

// TH1 : Lấy giai thừa của 1 số vd: 4! = 4x3x2x1
func TH1 (_ n :Int) -> Int {
    return (n > 1) ? n * TH1(n - 1) : 1
}
// TH2: Lấy giá trị đầu trong mỗi Array con của Array lớn. Bỏ Array đầu tiên trong Array lớn
func maxSquare(_ matrix:[[Int]]) -> Int
{
//    let matrix = ["00000", "01110", "01110", "01110", "01110", "00000"]
    let rows    = matrix.count // 4
    let cols    = matrix.first!.count // 4
    let maxSide = min(rows,cols) // 4
    
    let subMat  = matrix.prefix(maxSide).map{$0.prefix(maxSide)}
    let all1s   = !subMat.contains{$0.contains(0)}
    if all1s { return maxSide * maxSide }
    
    let vSlice  = (1..<rows).map{ Array(matrix.dropFirst($0))}
    let hSlice  = (1..<cols).map{ c in matrix.map{Array($0.dropFirst(c))}}
    let counts  = hSlice.map{maxSquare($0)} + vSlice.map{maxSquare($0)}
    return counts.reduce(0,max)
}
