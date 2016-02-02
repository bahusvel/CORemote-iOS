//
//  ViewController.swift
//  CORemote
//
//  Created by denis lavrov on 29/01/16.
//  Copyright © 2016 Denis Lavrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var wideArea: CircularUIView!
	@IBOutlet weak var localArea: CircularUIView!
	@IBOutlet weak var glowRing: GlowRingView!
	
	let pulserPeriod: CFTimeInterval = 4
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		self.setupPulserAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if let actionController = segue.destinationViewController as? ActionViewController {
			let module = ModuleRepresentation(moduleID: "com.bahus.SampleModule")
			module.inputServices = [ServiceRepresentation(name: "SampleInput", type: .Input)]
			module.outputServices = [ServiceRepresentation(name: "SampleOutput", type: .Output)]
			actionController.module = module
		}
	}
    
    func addCORModule(module: ModuleRepresentation){
        
    }
	
	func setupPulserAnimation(){
		let scaleAnimation: CABasicAnimation = CABasicAnimation(keyPath: "transform.scale")
		scaleAnimation.duration = pulserPeriod
		scaleAnimation.repeatCount = FLT_MAX
		scaleAnimation.autoreverses = false
		scaleAnimation.fromValue = 0.0
		scaleAnimation.toValue = 1.0
		
		let opacityAnimation: CABasicAnimation = CABasicAnimation(keyPath: "opacity")
		opacityAnimation.duration = pulserPeriod
		opacityAnimation.repeatCount = FLT_MAX
		opacityAnimation.autoreverses = false
		opacityAnimation.fromValue = 1.0
		opacityAnimation.toValue = 0.0
		
		glowRing.layer.addAnimation(scaleAnimation, forKey: "scale")
		glowRing.layer.addAnimation(opacityAnimation, forKey: "opacity")
	}

}

