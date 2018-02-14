//
//  ViewController.swift
//  WindowShopper
//
//  Created by Gurjit Singh on 2/11/18.
//  Copyright © 2018 Gurjit Singh. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var controlLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.7613719545, blue: 0.1251530634, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self,
                          action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        controlLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                controlLbl.isHidden = false
                hoursLbl.isHidden = false
                controlLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        controlLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
   
}

