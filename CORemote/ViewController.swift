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
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addCORModule(module: CORModuleRepr, location: ModuleLocation){
        
    }

}

