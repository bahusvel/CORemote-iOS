//
//  GlowRingView.swift
//  CORemote
//
//  Created by denis lavrov on 30/01/16.
//  Copyright © 2016 Denis Lavrov. All rights reserved.
//

import UIKit

@IBDesignable
class GlowRingView: UIView {
	
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
		CORemoteUI.drawGlowRing(frame: rect)
    }
	
	
}
