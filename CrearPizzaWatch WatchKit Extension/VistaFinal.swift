//
//  VistaFinal.swift
//  CrearPizzaWatch
//
//  Created by mac on 4/13/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import WatchKit
import Foundation


class VistaFinal: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        //mensajeFinal.setText("Seleccione 1 ingrediente")
       
        let c = context as! Ingredientes
        mensajeFinal.setText(String(c.mensaje))
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    @IBOutlet var mensajeFinal: WKInterfaceLabel!
    
    
    
}
