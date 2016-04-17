//
//  VistaQueso.swift
//  CrearPizzaWatch
//
//  Created by mac on 4/11/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import WatchKit
import Foundation


class VistaQueso: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

    @IBOutlet var mostrarQueso: WKInterfaceLabel!
    
    var tqueso = ""
    @IBAction func slideSeleccionQueso(value: Int) {
        if value == 0 {
            mostrarQueso.setText("Sin Queso")
            tqueso = "Sin Queso"
            print("Sin Queso")
            
        }else if value == 1{
            mostrarQueso.setText("Mozarela")
            tqueso = "Mozarela"
            print("Mozarela")
            
        }else if value == 2{
            mostrarQueso.setText("Cheddar")
            tqueso = "Cheddar"
            print("Cheddar")
            
        }else if value == 3{
            mostrarQueso.setText("Parmesano")
            tqueso = "Parmesano"
            print("Parmesano")
        }
        
    }// slide
    
    @IBAction func Continuar() {

            pushControllerWithName("SeleccionIngredientes", context: tqueso)
        
    }
    
}
