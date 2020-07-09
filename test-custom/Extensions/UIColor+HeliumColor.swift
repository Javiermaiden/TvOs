//
//  UI.swift
//  test-custom
//
//  Created by Ngine on 09/07/2020.
//  Copyright © 2020 Ngine. All rights reserved.
//

import UIKit

extension UIColor {
//    var colorprim = 0x6adcba
//    var colorsec = 0xA1EDD7
//    var grey = 0xCCCCCC
//    var black = 0x000000
//    var white = 0xFFFFFF
//    var darkgrey = 0x363636


    public class func heliumButtonFocus()  -> UIColor{
        return UIColor.rgb(fromHex: 0x6adcba)
    }

    public class var heliumButton: UIColor {
        return UIColor.rgb(fromHex: 0x000000)
    }

    public class var heliumText: UIColor {
        return UIColor.rgb(fromHex: 0x000000)
    }

    public class var heliumTextFocus: UIColor {
        return UIColor.rgb(fromHex: 0xFFFFFF)
    }

    public class var heliumBackground: UIColor {
        return UIColor.rgb(fromHex: 0xCCCCCC)
    }



    public class func rgb(fromHex: Int) -> UIColor {

        let red =   CGFloat((fromHex & 0xFF0000) >> 16) / 0xFF
        let green = CGFloat((fromHex & 0x00FF00) >> 8) / 0xFF
        let blue =  CGFloat(fromHex & 0x0000FF) / 0xFF
        let alpha = CGFloat(1.0)

        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
