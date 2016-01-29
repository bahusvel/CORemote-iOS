//
//  CORemoteModule.swift
//  CORemote
//
//  Created by denis lavrov on 29/01/16.
//  Copyright © 2016 Denis Lavrov. All rights reserved.
//

import Foundation

class CORemoteModule: CORModule{
    init(){
        super.init(moduleID: "com.bahus.CORemote", networkAdapter: nil)
        self.networkAdapter = CallbackNetworkAdapter(module: self)
    }
}