struct Calculator {
    
    func reduce(_ nums: [Int], using nextPartialResult: (Int, Int)-> Int, startingAt initialResult: Int) -> Int {
        var total = initialResult
        for num in nums {
          total = nextPartialResult(total, num)
        }
        return total
      }
    
    func filter(_ nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
        var filteredNums = [Int]()
        for num in nums {
            if isIncluded(num) {
                filteredNums.append(num)
            }
        }
        return filteredNums
    }
    
    func map(_ nums: [Int], using transform: (Int) -> Int ) -> [Int] {
        var mappedNums = [Int]()
        for num in nums {
            mappedNums.append(transform(num))
        }
        return mappedNums
        
    }
    
    func sorted(_ nums: [Int]) -> [Int] {
        return nums.sorted()
    }
}

var gloria = Calculator()
var peso = [3, 6, 9, 12, 15]

var addition: (Int, Int) -> Int = { (num1 , num2) in
     num1 + num2
}

let sum = gloria.reduce(peso, using: addition, startingAt: 0)
print(sum)

var squabble = [0, 5, 3, 0, 1, 6, 8, 5, 9, 0, 0]

let luther = gloria.filter(squabble, using: { luther in luther != 0} )
print(luther)

let tvOff = [1, 3, 4, 5, 6 ,2, 76, 8, 3]
let gnx = gloria.map(tvOff, using: { gnx in gnx + 2})
print(gnx)

let dodgerBlue = gloria.sorted(tvOff)
print(dodgerBlue)
