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
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.5901678396, green: 0.5964856789, blue: 0.6000595098, alpha: 0.6906571062)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current
        currencyLbl.text = formater.currencySymbol
        addSubview(currencyLbl)
        
    }

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
        
            clipsToBounds = true
            if let p = placeholder {
                let place = NSAttributedString(string: p,
                                               attributes: [.foregroundColor: UIColor.white])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
            
        }
    }


