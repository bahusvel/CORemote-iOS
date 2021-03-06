//
//  CORModuleButton.swift
//  CORemote
//
//  Created by denis lavrov on 29/01/16.
//  Copyright © 2016 Denis Lavrov. All rights reserved.
//

import UIKit

@IBDesignable
class CORModuleButton: UIButton {
	@IBInspectable var buttonColor: UIColor = UIColor.blueColor()
	@IBInspectable var moduleName: String = "ME"
	
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
		CORemoteUI.drawModuleRepr(frame: rect, shapeColor: buttonColor, moduleName: moduleName)
    }

}
