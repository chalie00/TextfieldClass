//
//  CurrencyTextField.swift
//  TextFieldClass
//
//  Created by formathead on 14/12/2018.
//  Copyright © 2018 formathead. All rights reserved.
// Branch Added
//Lesson-02 Com
//Lesson-02 Real Com

import UIKit

@IBDesignable //StoryBoard에 변경 점을 렌더링 없이 바로 보여준다.
//http://minsone.github.io/mac/ios/how-to-live-coding-using-ibdesignable-and-ibinspectable-in-swift

class CurrencyTextField: UITextField {

    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
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
    
    

}// End Of The Class

