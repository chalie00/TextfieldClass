//
//  Wage.swift
//  TextFieldClass
//
//  Created by formathead on 17/12/2018.
//  Copyright © 2018 formathead. All rights reserved.
//

import Foundation

class Wage {
    class func gethours(forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price/wage))
        
    }
}
