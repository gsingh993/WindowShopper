//
//  Wage.swift
//  WindowShopper
//
//  Created by Gurjit Singh on 2/12/18.
//  Copyright © 2018 Gurjit Singh. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
