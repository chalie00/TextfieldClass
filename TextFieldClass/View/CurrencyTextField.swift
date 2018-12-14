//
//  CurrencyTextField.swift
//  TextFieldClass
//
//  Created by formathead on 14/12/2018.
//  Copyright © 2018 formathead. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
        
    }
    
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2532908818)
        layer.cornerRadius = 5.0
        textAlignment = .center

        clipsToBounds = true

        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }

    }

}
