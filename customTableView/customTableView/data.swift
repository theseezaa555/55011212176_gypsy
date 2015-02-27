//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<balloon> {
        var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "blue.jpg"), bName: "blue")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "red.jpg"), bName: "red")
        tempArray.append(b2)
        
        let b3 = balloon(bImage: UIImage(named: "yellow.jpg"), bName: "yellow")
        tempArray.append(b3)
        return tempArray
        
        
        
        
        
    }
}
