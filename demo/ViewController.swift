//
//  ViewController.swift
//  demo
//
//  Created by Nguyễn Hữu Dũng on 7/31/17.
//  Copyright © 2017 Nguyễn Hữu Dũng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let list2 = [ 10, 0, 3, 9, 2, 14, 26, 27, 1, 5, 8, -1, 8 ]
//        partitionLomuto(&list2, low: 0, high: list2.count - 1)
   
//        quicksortLomuto(&list2, low: 0, high: list2.count - 1)
//             print(list2)
        
//        let list1 = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
//        print(quicksort(a: list1))
//        print(quickSortAuto(a: list1))
        print(quickSortAuto(a: list2))

    }
    
    func quicksort(a: [Int]) -> [Int] {
        guard a.count > 1 else { return a }
        
        let pivot = a[a.count/2]
        let less = a.filter { $0 < pivot }
        let equal = a.filter { $0 == pivot }
        let greater = a.filter { $0 > pivot }
        
        // Uncomment this following line to see in detail what the
        // pivot is in each step and how the subarrays are partitioned.
        //print(pivot, less, equal, greater)  return quicksort(less) + equal + quicksort(greater)
        
        return quicksort(a: less) + equal + quicksort(a: greater)
    }
   
    
    func quickSortAuto(a:[Int]) -> [Int] {
        guard a.count > 1  else {
            return a
        }
        let pivot = a[a.count/2]
        
        
        var less: [Int] = []
        var equal: [Int] = []
        var greater: [Int] = []
        
        for  i in 0...a.count - 1 {
            
            if a[i] < pivot {
                
                less.append(a[i])

                
            } else if a[i] == pivot {
                
                equal.append(a[i])

                
            }else {
                
                greater.append(a[i])
                
            }
        }
      
        return quicksort(a:less) + equal + quicksort(a: greater)
        
        
    }

    
//    func partitionLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
//        let pivot = a[high]
//        
//        var i = low
//        for j in low..<high {
//            if a[j] <= pivot {
//                (a[i], a[j]) = (a[j], a[i])
//                i += 1
//            }
//        }
//        
//        (a[i], a[high]) = (a[high], a[i])
//        return i
//    }
//    
//   
//    
//    func quicksortLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) {
//        if low < high {
//            let p = partitionLomuto(&a, low: low, high: high)
//            quicksortLomuto(&a, low: low, high: p - 1)
//            quicksortLomuto(&a, low: p + 1, high: high)
//        }
//    }
//    
 

}

