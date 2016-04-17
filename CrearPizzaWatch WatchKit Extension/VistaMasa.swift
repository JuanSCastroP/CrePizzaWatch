//
//  VistaMasa.swift
//  CrearPizzaWatch
//
//  Created by mac on 4/11/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import WatchKit
import Foundation


class VistaMasa: WKInterfaceController {

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
    

    
    @IBOutlet var mostrarMasa: WKInterfaceLabel!
    var tmasa : String = ""
    @IBAction func slideSeleccionaMasa(value: Int) { // slide selecciona masa
        
        if value == 0 {
            mostrarMasa.setText("Sin Masa")
            tmasa = "Sin Masa"
            print("Sin Masa")
            
        }else if value == 1{
            mostrarMasa.setText("Delgada")
            tmasa = "Delgada"
            print("Delgada")
            
        }else if value == 2{
            mostrarMasa.setText("Crujiente")
            tmasa = "Crujiente"
            print("Crujiente")
            
        }else if value == 3{
            mostrarMasa.setText("Gruesa")
            tmasa = "Gruesa"
            print("Gruesa")
        }
    }//slide
    
    @IBAction func continuarAQueso() {
        if tmasa == "" || tmasa == "Sin Masa"{
            mostrarMasa.setText("Sin Masa")
        }else{
            pushControllerWithName("SeleccionQueso", context: tmasa)
        }
        
    }

}
