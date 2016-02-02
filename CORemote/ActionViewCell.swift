//
//  ActionViewCell.swift
//  CORemote
//
//  Created by denis lavrov on 30/01/16.
//  Copyright © 2016 Denis Lavrov. All rights reserved.
//

import UIKit

@IBDesignable
class ActionViewCell: UICollectionViewCell {
	var actionName = ""
	var actionColor = UIColor.redColor()
	var actionImage = UIImage()
	
	override func drawRect(rect: CGRect) {
		CORemoteUI.drawAction(frame: rect, shapeColor: actionColor, image: actionImage, actionName: actionName)
	}
    
}
