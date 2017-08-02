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
        
        let list = [ 0,1,4,8,2,6,4,9,10,4,1,2 ]

        print(quickSort1(a: list))

        print(quickSort2(a: list))

    }
    
    func quickSort1(a: [Int]) -> [Int] {
        guard a.count > 1 else { return a }
        
        let pivot = a[a.count/2]
        let less = a.filter { $0 < pivot }
        let equal = a.filter { $0 == pivot }
        let greater = a.filter { $0 > pivot }
        
    
        
        return quickSort1(a: less) + equal + quickSort1(a: greater)
    }
   
    
    
    func quickSort2(a:[Int]) -> [Int] {
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
      
        return quickSort2(a:less) + equal + quickSort2(a: greater)
    
    }


}

