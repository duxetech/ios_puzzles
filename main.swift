//
//  main.swift
//  puzzle
//
//  Created by Karthik on 19/06/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import Foundation



var ar = [5,3,7,122,43]

func sort() {
    let b = "riches"
    let a = ar.sorted()
    print(b.sorted())
}

func range() {
    let n = 10
    if n % 2 != 0 {
        print("Weird")
    }
    if n % 2 == 0 && (2...5).contains(n) {
        print("Not Weird")
    }
    if n % 2 == 0 && (6...20).contains(n) {
        print("Weird")
    }
    if n % 2 == 0 && n > 20 {
        print("Not Weird")
    }
}

func amIOld(age : Int) {
    var age = age
    if age < 0 {
        print("Age is not valid, setting age to 0.")
        age = 0
    }
    else
    if age < 13 {
            print("You are young.")
        }
    else
    if (13...18).contains(age) {
                print("You are a teenager.")
    } else {
        print("You are old.")
    }
    
}


func loop(){
    let n = 2
    for i in 1...10 {
        print("\(n) x \(i) = \(n*i)")
    }
}

//Given a string, , of length  that is indexed from  to , print its even-indexed and odd-indexed characters as  space-separated strings on a single line (see the Sample below for more detail).


func check(string : String) {
    
    
    let m = Array(string)
    print(m)
    var odd = [Character]()
    var even = [Character]()
    
    for i in 1...string.count {
        if i%2 == 0 {
            even.append(m[i-1])
        //odd.append(i)
        } else {
            odd.append(m[i-1])
        }
        
    }
    
    print("\(String(odd))  \(String(even))")

}


//Given an array, , of  integers, print 's elements in reverse order as a single line of space-separated numbers.


func revert(){
    let arr = [4,3,4,5]
    
  
    var temp = ""
    for i in arr.reversed() {
        // print("", i, separator: " ", terminator:"")
        temp += "\(i) "
        
    }
    print(temp)
}



func dic(s : String) {
    let d = ["sam" :99912222, "tom" : 11122222, "harry" : 12299933 ]
    
    
    if let a = d[s] {
        print(a)
    }
    

}

//Given a base- integer, , convert it to binary (base-). Then find and print the base- integer denoting the maximum number of consecutive 's in 's binary representation.

func bin(){
    let n =  167789
    var bin =    String(n,radix:2)

    
   let temp = bin.split(separator: "0")
   let b = temp.sorted().last
    print(b!.count)
   
}


func calc() {
    let a = "34+3*(5-4)/3+(3*5)-32"

    let c = a.components(separatedBy: ["(",")"])
    //let d = a.split(separator: "(",")")
    

    let b = a.replacingOccurrences(of: "#", with: "")
    print(b)

    print( NSExpression(format : b).expressionValue(with: nil, context: nil)!)

    func op(a : Character) {
        
        switch a {
        case "+" :
            return
        default:
            break
        }
    }
   // print(ar)
}

func maxm(){
    let arr = [41,32,4,15,1,434]
   
    print(arr.max()!)
    
    print(arr.sorted().last!)
    
    var max = arr[0]
    
    for i in 1..<arr.count {
            if arr[i] > max {
            max = arr[i]
            }
        }
    
   
    
    print(max)

}

//extractNumbers()

func extractNumbers() {
    let string = "0kaksd020dk2kfj2123"
    if let number = Int(string.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) {
        print(number)
    }
    
    let n = Int(string.components(separatedBy: CharacterSet.decimalDigits).joined())
    print(n)
}



func findItem() {
    let names = ["Ford", "Arthur", "Trillian", "Zaphod", "Marvin", "Deep Thought", "Eddie", "Slartibartfast", "Humma Kuvula", "rich"]

    let name = "rich"
    var index = 0
    for i in names {
        if i == name {
            print(index)

        }
        index += 1
    }
    
    if let n = names.firstIndex(of: name) {
        print(n)
    }
}

//findItem()


// Finding An Item In An Array With “firstIndex(where:)”


func Where(){
    let grades = [8, 9, 10, 1, 2, 5, 3, 4, 8, 8]
    let res = grades.firstIndex(where : {$0 > 5})
    let r = grades.all(where : {$0 > 5})
    print(r)
}
extension Array where Element: Equatable {
    func all(where predicate: (Element) -> Bool) -> [Element]  {
        return self.compactMap { predicate($0) ? $0 : nil }
    }
}


//Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum.


// reverse a string

func rever() {
    let s = "success"
    
    for i in 0...s.count-1 {
        print(i)
    }
}

//rever()

//Given two strings s1 and s2, remove those characters from first string which are present in second string. Both the strings are different and contain only lowercase characters.

func removeCommon() {
    var a = "removeccharaterfrom"
    var b = "string"
    
  //  a = a.replacingOccurrences(of: "e", with: "")
    
    for i in a {
        for j in b {
            if i == j {
                a = a.replacingOccurrences(of: String(i), with: "")
                b = b.replacingOccurrences(of: String(j), with: "")
            }
        }
    }
    
    print(a)
}
//Count the number of 2s as digit in all numbers from 0 to n.

func count2s(){
    let n = 100
    var count = 0, c = 0
    for i in 0...n {
       let  t = String(i).components(separatedBy: "9")
        count += t.count-1
    }
    print(count)
}
count2s()

//Given a string str containing alphanumeric characters, calculate sum of all numbers present in the string.


func sumOfNum() {
    let s = "2k3a1f1&*&%^#$"
    //    if let number = Int(string.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) {

    if let n = Int( s.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) {
     //   print(n)
    }
    let num = s.numbers
    
   print( s.numbers)
    
    var res = 0
    
    for i in num {
        res += Int(String(i))!
    }
    
    num.map{Int(String($0))!}.reduce(0, +)
    print(res)
    print (s.filter{"0"..."9" ~= $0} )
    
    
    
    
}

extension String {
    var numbers : String {
        return String(filter {"0"..."9" ~= $0})
    }
}

//sumOfNum()

//Corresponding to each test case, print the kth smallest element in a new line.

func smallElement() {
    var ar = [1,3,11,4,2,5]
    let k = 3
    var a = [7, 10, 4, 3, 20, 15]

    
    
    ar = ar.sorted()
    a = a.sorted()
    
    print (a[k-1] )
    
    var temp = ar[0]
    var t = 0
    for i in 1..<ar.count {
        if ar[i] > temp {
            temp = ar[i]
        }
      
    }
    print(ar)

//    print(temp)
    
}

//smallElement()

func sort_raw() {
    var ar = [1,3,11,4,2,5]

    var max = ar[0]
    func findMax(){
        for i in 0..<ar.count {
            if ar[i] > max {
                max = ar[i]
            }
        }
        print(max)
        ar[0] = max
    }
    
    
    for i in 0..<ar.count-1 {
        if i == ar.count-2 {
            return
        }
        if ar[i] > ar[i+1] {
            ar.swapAt(ar[i], ar[i+1])
        }
    }
    print(ar)
}

//sort_raw()

// return an array of its anti-diagonals.

func anti_diag(){
    let arr = [[1,2,3,1,2,3],
               [1,2,3,1,2,3],
               [1,2,3,4,2,5],
               [1,2,3,4,1,2],
               [1,2,3,4,2,8],
               [1,2,11,4,2,5]]
    var temp = [Int]()
    print(arr[0].count)
    for i in 0..<arr.count {
        temp.removeAll()
        if i-1 < 0 {
            break
        }
        for j in 0...i-1 {
           
            temp.append(arr[i][j])
        }
        
        print(temp)
    }

}

//anti_diag()

func findNumber(arr: [Int], k: Int) -> String {
    
    if arr.contains(k) {
        return "YES"
    } else
    {
        return "NO"
    }
}

// Complete the oddNumbers function below.
func oddNumbers(l: Int, r: Int) -> [Int] {
    var arr = [Int]()
    var odd = [Int]()
    
    for i in l...r {
        arr.append(i)
    }
    
    for i in arr {
        if i%2 != 0 {
            odd.append(i)
        }
    }
    

    print(arr.filter{$0%2 != 0})
    
    return odd
    
}

//oddNumbers(l: 4, r: 19)

func hourglassSum(arr: [[Int]]) -> Int {

//    var arr = arr
//     arr=[[1,2,3,1,2,3],
//             [1,2,3,1,2,3],
//             [1,2,3,4,2,5],
//             [1,2,3,4,1,2],
//             [1,2,3,4,2,8],
//             [1,2,11,4,2,5]]
    
    
    var sum  = [Int]()
    var h = 0
    
    let row = arr.count - 2
    let col = arr[0].count - 2
    
   // print(row,col)
    
    for i in 0..<row {
        for j in 0..<col {
             h = (arr[i][j] + arr[i][j + 1] +
                arr[i][j + 2]) + (arr[i + 1][j + 1]) +
                (arr[i + 2][j] + arr[i + 2][j + 1] +
                    arr[i + 2][j + 2]);
            sum.append(h)
        }
    }

   // print(sum.sorted())
  return sum.sorted().last!
    
}

//Given an array  of  integers and a number, , perform  left rotations on the array. Return the updated array to be printed as a single line of space-separated integers.

func leftRotation() {
    var ar = [4,5,2,6,3]
    var arr = [4,5,2,6,3]
    
    arr.rotate(positions: 2)
    print(arr)
}

extension Array {
    mutating func rotate(positions: Int, size: Int? = nil) {
        guard positions < count && (size ?? 0) <= count else {
            print("invalid input1")
            return
        }
        reversed(start: 0, end: positions - 1)
        reversed(start: positions, end: (size ?? count) - 1)
        reversed(start: 0, end: (size ?? count) - 1)
    }
    mutating func reversed(start: Int, end: Int) {
        guard start >= 0 && end < count && start < end else {
            return
        }
        var start = start
        var end = end
        while start < end, start != end {
            self.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
}


leftRotation()

class Person {
    
}

class Student: Person {
    

    let firstName : String
    let lastName : String
    let id : Int
    let testScores: [Int]
    
    init(firstName : String, lastName : String, id : Int, testScores : [Int] ) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
        self.testScores = testScores
    }

    func calculate() -> Character {
        var avg = 0
        for i in testScores {
            avg = avg + i
        }
        avg = avg / testScores.count
        
        print(max(56,4,343,23))

        
        switch avg {
        case 90...100:
            return "O"
        case 80...90 :
            return "E"
        case 70...80 :
            return "F"
        case 55...70 :
            return "F"
        case 40...55 :
            return "F"
        default:
            return "A"
        }

    }
    
    
    
    
}

let s = Student(firstName: "kk", lastName: "swamy", id: 43, testScores: [34,34,5])


// End of class Studentvar ar1 : NSArray = [5,3,7,122,43]
var ar2 : NSMutableArray = [5,3,7,122,43]
//sort()

func arrays() {
    ar[0] = 1
    print(ar)
    ar2[0] = 11
    print(ar2)
}

func isPrime() {
    var n = 13
    var p = false
    var prime = [Int]()
    for i in 2...n/2 {
        if n % i == 0 {
            p = false
            break
        } else {
            p = true
          //  prime.append(i)
        }
    }
    print("prime \(p) \(prime)")

}
//isPrime()

func generatePrime(){
    let n = 541
    var ar = [2]
    var flag = false
    for i in 3...n {
        var i = i

        for j in 2...(i/2+1) {
            if i % j == 0 {
                flag = false
                break
                
            } else {
                flag = true
            }
        }
        if flag {
            ar.append(i)
        }

    }
    print(ar,ar.count)
}

//generatePrime()

func nthPrime() {
    let n = 10
    var first = 2
    var  next : Int!
    var prime = false
    var ar = [2]
    while ar.count < 10 {
        
    for i in 2...first {
        if first % i == 0 {
            prime = false
            break
        } else {
            prime = true
        }
    }
        if prime {
          //  ar.append(i)
        }
        first += 1
    }
    print(ar)
}

//nthPrime()
func nextBigger() {
    let num = 69
    var input = String(num)
  //  print(input.reversed())
   // input = input.reversed()
    var c = input.compactMap{Int(String($0))}
    let n = c.count
    
    for i in (1...(n-1)).reversed() {
        print(i)
        if c[i] > c[i-1] {
            print("not")
        }
    }
}

//nextBigger()

func fac() {
    let n = 5
    var fact = 1
    for i in 1...n {
        fact = fact * i
    }
    print(fact)
}

func factorial(n: Int) -> Int {
    
    var fact = 1
    for i in 1...n {
        fact = fact * i
    }
    return fact
}

//print(factorial(n: 4))

func PermutationStep(_ num: Int) -> Int {
    let input = String(num)
    var num = input.compactMap{Int(String($0))}
    //  print(num)
    var result = 0
    
    for i in (0...(num.count-1)).reversed() {
        if i+1 < num.count {
            if num[i] < num[i+1] {
                //print(num[i], num[i+1], i)
                let temp = num[i]
                num[i] = num[i+1]
                num[i+1] = temp
                // print(num)
                var ar = num[i+1...num.count-1].sorted()
                //   print("sorted",ar)
                for i in 0...ar.count-1 {
                    let p = num.count - ar.count
                    num[p+i] = ar[i]
                    
                }
                // print(num)
                result = num.reduce(0, {$0*10 + $1})
                // print(result)
                break
                
            }
            else {
                result = -1
            }
            
        }
    }
    return result
}



// keep this function call here

func PermutationStep2(_ num: Int) -> Int {
    var input = String(num)
    var num = input.compactMap{Int(String($0))}
    // print(num)
    var result = -1
    
    for i in (0...(num.count-1)).reversed() {
        if i+1 < num.count {
            if num[i] < num[i+1] {
                //print(num[i], num[i+1], i)
                let temp = num[i]
                num[i] = num[i+1]
                num[i+1] = temp
                // print(num)
                var ar = num[i+1...num.count-1].sorted()
                //   print("sorted",ar)
                for i in 0...ar.count-1 {
                    let p = num.count - ar.count
                    num[p+i] = ar[i]
                    
                }
                // print(num)
                result = num.reduce(0, {$0*10 + $1})
                // print(result)
                return result
                
            }
            else {
                break
            }
            
        }
    }
    return result
}








func swapCheck() {
    var arr = [4,3,5]
    arr[1]=9
    print(arr)
    
}
func swap(num : [Int], i : Int, j : Int) {
    
    var num1 = num, i = i, j = j
    
    print(num1[i],num1[i+1])
    
    var temp = num1[i]
    num1[i] = num1[j]
    num1[j] = temp
    
    print(num)
    
    
    
    
    
    
    
    
    
}







func sort(num : [Int], i : Int, j : Int) {
    var num = num, i = i, j = j
    
    while  i < j {
        swap(num: num, i: i, j: j)
        i += 1
        j -= 1
    }
}

func findNext(num : [Int]) {
    var l = num.count
    var i : Int
    for i in 0...(l-1) {
        if num[i] > num[i-1] {
            break
        }
        
    }
    
    
}

func findGreater(num : [Int]){
    var lastDigit = num[num.count-1], i = 0, j = 0
    
    for i in (0...(num.count-1)).reversed() {
        if lastDigit > num[i] {
            
            break
        }
        lastDigit = num[i]
        print(lastDigit)
        
    }
    if i>=0 {
        for j in (i...(num.count-1)).reversed() {
            if num[j] > num[i] {
                break
            }
        }
        swap(num: num, i: i, j: j)
        sort(num: num, i: i+1, j: num.count-1)
    }
    
    for i in 0...num.count {
        print(i)
    }
    
    
}




func FoodDistribution(_ arr: [Int]) -> Int {
    
    // code goes here
    // Note: feel free to modify the return type of this function
    var arr1 = arr
    var food = arr1.removeFirst();
    
    var diff = totalDiff(arr1: arr1);
    
    var potentialDiff = diff;
    
    while(food > 0){
        var lowestI = 0
        for i in 0..<arr1.count {
            
            var newArr = arr1.removeFirst()
            if (totalDiff(arr1: [newArr]) <= potentialDiff) {
                lowestI = i;
                potentialDiff = totalDiff(arr1: [newArr]);
            }
            arr1[i] = arr1[i] - 1
            
        }
        if (potentialDiff <= diff) {
            arr1[lowestI] = arr1[lowestI] - 1
            diff = potentialDiff;
            food = food - 1
        } else {
            return diff;
        }
    }
    
    print(diff)
    return diff;
}

func totalDiff(arr1 : [Int])->Int {
    
    var sum = 0;
    for i in 0..<arr1.count {
        sum += abs(arr1[i] - arr1[i+1]);
    }
    
    return sum;
}


var counter = 0

func OverlappingRanges(_ arr: [Int]) -> Bool {
    
    
    var arr1 = [Int]()
    var arr2 = [Int]()
    var counter = 0
    
    for i in 0..<(arr[1]-arr[0]+1) {
        arr1.append(arr[0]+i)
    }
    for j in arr[2]...arr[3] {
        arr2.append(j)
    }
    // print(arr1)
    //    print(arr2)
    for i in 0..<arr1.count {
        for j in 0..<arr2.count {
            if arr1[i]==arr2[j] {
                counter = counter + 1
            }
        }
    }
    
    //  print(counter)
    
    if counter >= arr[4] {
        return true
    }
    else {
        return false
    }
    // code goes here
    // Note: feel free to modify the return type of this function
    
    
}


// keep this function call here
func AlphabetSoup(_ str: String) -> String {
    
    let s = "rich"
    let al = "abcdefghijklmnopqrstuvwxyz"
    
    print(String(s.sorted()))
    
    
    return str
    
}


//    Have the function TimeConvert(num) take the num parameter being passed and return the number of hours and minutes the parameter converts to (ie. if num = 63 then the output should be 1:3). Separate the number of hours and minutes with a colon.

func TimeConvert(_ num: Int) -> String {
    
    if num > 60 {
        let h = num / 60
        let m = num % 60
        print("\(h):\(m)")
    }
    // code goes here
    // Note: feel free to modify the return type of this function
    return "\(num/60):\(num%60)"
    
}


func reverse() {
    let s = "rac e car"
    var a = ""
    for i in s.reversed() {
        a.append(i)
        
    }
    
    print(String(s.reversed()))
    print(a)
}
func letterChange(){
    var str = "ab"
    let letters = Array("abcdefghijklmnopqrstuvwxyz")
    let al = ["a","b","c","d"]
    for i in al {
        if i == str {
            
        }
        
        
    }
}


func LetterChanges(_ str: String) -> String {
    let vowels = ["a", "e", "i","o","u"]
    let letters = Array("abcdefghijklmnopqrstuvwxyz")
    var new_str = ""
    for i in str{
        if let index = letters.index(of: i){
            var letter = String(letters[index+1])
            if vowels.contains(letter){
                letter = letter.uppercased()
            }
            new_str += letter
        }
        else{
            new_str += String(i)
        }
        
    }
    print(new_str)
    // code goes here
    // Note: feel free to modify the return type of this function
    return new_str
    
}


func addNumbers(num : Int) {
    var sum = 0
    for i in 1...num {
        sum = i + sum
        
    }
    print( sum )
}

func LetterCapitalize(_ str: String) -> String {
    
    
    
    //1.
    print(str.localizedCapitalized)
    
    
    //2.
    return str.components(separatedBy:" ")
        .map{ "\($0.characters.first!)".uppercased() + String($0.characters.dropFirst())  }
        .joined(separator:" ")
    
    
    
}

//4 .Contiguous subarrays are a group of an uninterrupted range of elements from an array as they occur. No elements in the range can be skipped or reordered. Given an array of integers, numbers and an integer k, determine the total number of subarrays of numbers having a product that is less than or equal to k.

func countSubarrays(numbers: [Int], k: Int) -> Int {
    var count = 0
    var temp = 0
    for i in 0..<numbers.count {
        if numbers[i] <= k {
            count += 1
        }
        temp = numbers[i]
        
        for j in i+1..<numbers.count {
            temp = temp*numbers[j]
            
            if temp <= k {
                count += 1
            } else {
                break
            }
        }
    }
    
    return count
}


//print(countSubarrays(numbers: [4,3,5], k: 8))

var isPresent = false
func findElePresent(e : Int)->Bool{
    for i in ar {
        if e == i {
            isPresent = true
            return isPresent
        }
    }
    return isPresent
}

//print(findElePresent(e: 8))


func palind() {
    let a = "madam"
    
    if a == String(a.reversed()) {
        print("pal")
    } else {
        print("not")
    }
  //  print("palind")
}


func checkIfPrime() {
    let n = 89232
    var pri = true
    for var i in 3...n/2-1 {
        if n % i == 0 {
            pri = false
            print("not prime")
            
            return
        }
        i += 2
    }
    
    if pri {
        print("prime")
    }
    if n / 2 != 0 {
        
    }
}

func primeUpto(){
    let n = 50
    var prime = [Int]()
    var p : Int
    for i in 3...n {
        for j in 2...i {
            if i % j == 0 {
                
            }
        }
    }
    print(prime)
}


//func pascal() {
//    var ar = [[Int]]()
//    for i in 1...5 {
//        for j in 1...i {
//            ar.append[i][j]
//        }
//        print(ar)
//    }
//}
//pascal()




