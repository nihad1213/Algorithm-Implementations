/**
 * Linear search, or sequential search,
 * is the simplest method for finding a
 * specific value within a collection of data.
 * 
 * 
 * 
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(1)
 */
 
func linearSearchAlgorithm<M: Equatable>(_ array: [M], _ element: M) -> Int? {
   for x in 0..<array.count {
      if array[x] == element {
         return x
      }
   }    
   return nil
}


let arr1 = [1, 2, 3, 4, 5]
let arr2: [Int] = []
let arr3 = [1, 2, 3, 4, 5]
let arr4 = [1, 2, 3, 4, 5]

print(linearSearchAlgorithm(arr1, 3) ?? -1)
print(linearSearchAlgorithm(arr1, 6) ?? -1)
print(linearSearchAlgorithm(arr2, 1) ?? -1)
print(linearSearchAlgorithm(arr3, 1) ?? -1)
print(linearSearchAlgorithm(arr4, 5) ?? -1)
