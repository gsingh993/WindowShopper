//
//  CurrencyTxtField.swift
//  WindowShopper
//
//  Created by Gurjit Singh on 2/11/18.
//  Copyright © 2018 Gurjit Singh. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        customizeView()
    }
 
    func customizeView(){
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2472977312)
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            if let p = placeholder {
                let place = NSAttributedString(string: p,
                                               attributes: [.foregroundColor: UIColor.white])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
            
        }
    }


