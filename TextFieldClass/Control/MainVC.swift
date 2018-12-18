//
//  ViewController.swift
//  TextFieldClass
//
//  Created by formathead on 14/12/2018.
//  Copyright © 2018 formathead. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wage: CurrencyTextField!
    @IBOutlet weak var price: CurrencyTextField!
    @IBOutlet weak var resultLB: UILabel!
    @IBOutlet weak var hourLb: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))

        calBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calBtn.setTitle( "Calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        
        //inputAccessoryView는 SW Keyboard가 활설화 될 때 키보드 위에 해당 View(calBtn)을 활성화 시킨다.
        wage.inputAccessoryView = calBtn
        price.inputAccessoryView = calBtn
        
        resultLB.isHidden = true
        hourLb.isHidden = true
        
    }

    
    @objc func calculate() {
        
        if let wage = wage.text, let price = price.text {
            
            if let wageV = Double(wage), let priceV = Double(price) {
                
                view.endEditing(true)
                resultLB.isHidden = false
                hourLb.isHidden = false
                
                resultLB.text = "\(Wage.gethours(forWage: wageV, andPrice: priceV))"
                
                
            }
            
        }
        
    }
    
    
    @IBAction func clearcal(_ sender: Any) {
        
        resultLB.isHidden = true
        hourLb.isHidden = true
        
        wage.text = ""
        price.text = ""
        
    }
    
    
    
}// END Of The Class



