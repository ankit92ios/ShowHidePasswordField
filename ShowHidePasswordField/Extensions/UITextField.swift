//
//  UITextField.swift
//  ShowHidePasswordField
//
//  Created by ankit on 21/05/2020.
//  Copyright © 2020 ankit. All rights reserved.
//


import UIKit
import Foundation

extension UITextField{
    func showEyePasswordField(){
        let eyeOpenedImage = UIImage(named: "ic_eye_open", in:  Bundle.main, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        let eyeClosedImage = UIImage(named: "ic_eye_closed", in: Bundle.main, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
               let padding: CGFloat = 30
               let buttonWidth : CGFloat =  150.0 //(frame.width / 2) - padding
               let buttonFrame = CGRect(x: frame.width - buttonWidth - padding, y: 0, width: buttonWidth, height: frame.height)
               let eyeButton: UIButton = UIButton()
               eyeButton.frame = buttonFrame
               eyeButton.backgroundColor = UIColor.clear
               eyeButton.adjustsImageWhenHighlighted = false
               eyeButton.tag = 400
               eyeButton.setImage(eyeOpenedImage, for: UIControl.State())
               eyeButton.setImage(eyeClosedImage, for: .selected)
               eyeButton.addTarget(self, action: #selector(UITextField.eyeButtonPressed(_:)), for: .touchUpInside)
               eyeButton.autoresizingMask = [.flexibleWidth, .flexibleHeight]
               eyeButton.tintColor = self.tintColor
               self.rightView = eyeButton
               self.rightViewMode = .always
    }
    
    
       @objc func eyeButtonPressed(_ sender: AnyObject) {
            if let eyeButton = self.viewWithTag(400) as? UIButton{
                 eyeButton.isSelected = !eyeButton.isSelected
                 self.isSecureTextEntry = eyeButton.isSelected ? false : true
            }
       }
}

extension String
{
    func safelyLimitedTo(length n: Int)->String {
        if (self.count <= n) { return self }
        return String( Array(self).prefix(upTo: n) )
    }
    
}


