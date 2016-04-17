//
//  Ingredientes.swift
//  CrearPizzaWatch
//
//  Created by mac on 4/13/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import Foundation

class Ingredientes: NSObject {
    
    var cantidad : Int = 0
    var mensaje : String
    
    init(cant : Int, msgs : String) {
        
        cantidad = cant
        mensaje = msgs
        
        
    }
}