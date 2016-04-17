//
//  InterfaceController.swift
//  CrearPizzaWatch WatchKit Extension
//
//  Created by mac on 4/11/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

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
    
    
    var tpizza : String = ""
    @IBOutlet var muestraTamano: WKInterfaceLabel! // label mostrar tamaño
    
    @IBAction func slideSeleccionaTamano(value: Int) { //slide para seleccion de tamaño

        if value == 0 {
            muestraTamano.setText("Sin Tamaño")
            tpizza = "Sin Tamaño"
            print("Sin Tamaño")
            
        }else if value == 1{
            muestraTamano.setText("Pequeño")
            tpizza = "Pequeño"
            print("Pequeño")
    
        }else if value == 2{
            muestraTamano.setText("Mediano")
            tpizza = "Mediano"
            print("Mediano")
        
        }else if value == 3{
            muestraTamano.setText("Grande")
            tpizza = "Grande"
            print("Grande")
        }
    }// slide
    
    
    @IBAction func continuarAMasa() { // boton contunuar
        
        if tpizza == "" || tpizza == "Sin Tamaño"{
            muestraTamano.setText("Sin Tamaño")
        }else{
                pushControllerWithName("SeleccionMasa", context: tpizza)
        }
    }
    
    

}
