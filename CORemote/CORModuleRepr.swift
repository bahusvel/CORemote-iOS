//
//  CORModuleRepr.swift
//  CORemote
//
//  Created by denis lavrov on 29/01/16.
//  Copyright © 2016 Denis Lavrov. All rights reserved.
//

import Foundation

class ModuleRepresentation {
	let moduleID: String
	let moduleName: String = "ModuleName"
	var inputServices: [ServiceRepresentation] = []
	var outputServices: [ServiceRepresentation] = []
	
	init(moduleID: String){
		self.moduleID = moduleID
	}

}

class ServiceRepresentation {
	let name: String
	let type: ServiceType
	
	init(name: String, type: ServiceType){
		self.name = name
		self.type = type
	}
	
	
}

enum ServiceType{
	case Input
	case Output
}

enum ModuleLocation {
    case Local
    case Proximity
    case Remote
}