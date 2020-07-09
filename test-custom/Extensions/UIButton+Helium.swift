//
//  UIButton+Helium.swift
//  test-custom
//
//  Created by Ngine on 09/07/2020.
//  Copyright © 2020 Ngine. All rights reserved.
//

import UIKit

extension UIButton {
    func heliumButton(x: Int, y: Int, width: Int, height: Int, text: String, icon: String) -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 45
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        button.backgroundColor = UIColor.heliumButton
        button.layer.borderColor = UIColor.white.cgColor
        if text != "" {
            button.setTitle(text, for: .normal)
        }
        
        
        return button
    }
    
    open override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        //super.didUpdateFocus(in: <#T##UIFocusUpdateContext#>, with: <#T##UIFocusAnimationCoordinator#>)
        if context.nextFocusedView === self {
            coordinator.addCoordinatedAnimations({
                // change the appearance as desired
                }, completion: nil)
            self.backgroundColor = UIColor.heliumButtonFocus
            self.titleLabel?.textColor = UIColor.heliumTextFocus
        } else if context.previouslyFocusedView === self {
            coordinator.addCoordinatedAnimations({
                // revert back to default appearance
                }, completion: nil)
            self.backgroundColor = UIColor.heliumButton
            self.titleLabel?.textColor = UIColor.heliumText
        }
//        if context.nextFocusedView == myButton {
//            myButton = UIColor.redColor()
//        } else {
//            myButton = UIColor.blueColor()
//        }
    }
}
