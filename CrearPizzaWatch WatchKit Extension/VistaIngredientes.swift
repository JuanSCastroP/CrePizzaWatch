//
//  VistaIngredientes.swift
//  CrearPizzaWatch
//
//  Created by mac on 4/11/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import WatchKit
import Foundation


class VistaIngredientes: WKInterfaceController {

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

    var cantIngredientes = 0
    

    
    @IBAction func slideJamon(value: Bool) {
        if value == true{
            cantIngredientes += 1
            print("cantidad ingredientes \(cantIngredientes)")
        }
        
        
    }

    @IBAction func slidePepperoni(value: Bool) {
        if value == true {
            cantIngredientes += 1
            print("cantidad ingredientes \(cantIngredientes)")
        }
    }

    @IBAction func slidePavo(value: Bool) {
        if value == true {
            cantIngredientes += 1
            print("cantidad ingredientes \(cantIngredientes)")
        }
    }
        

    @IBAction func slideAceituna(value: Bool) {
        if value == true{
            cantIngredientes += 1
            print("cantidad ingredientes \(cantIngredientes)")
        }
    }
    
    @IBAction func slideCebolla(value: Bool) {
        if value == true{
            cantIngredientes += 1
            print("cantidad ingredientes \(cantIngredientes)")
        }
    }
        
    @IBAction func slidePina(value: Bool) {
        if value == true{
            cantIngredientes = cantIngredientes + 1
            print("cantidad ingredientes \(cantIngredientes)")
        }
    }

 
    @IBAction func ordenaPizza() {
        if cantIngredientes == 0 {
            print("seleccione al menos 1 ingrediente")
            let ingredientesCant = cantIngredientes
            let mensaje = Ingredientes(cant: ingredientesCant, msgs: "Sin Ingredientes")
            pushControllerWithName("VistaFinal", context: mensaje)
            print("\(mensaje)")
            
        }else{
            print("Su Pizza en Segundos")
            let ingredientesCant = cantIngredientes
            let mensaje = Ingredientes(cant: ingredientesCant, msgs: "Bonne Apetit!!")
            pushControllerWithName("VistaFinal", context: mensaje)
        }
         //       showErrorAlertMessage("Tu Pizza ha sido confirmada. En minutos podrás degustarla!")
        
    }
  
 /*
    private func showErrorAlertMessage(mensaje: String) { // para mostrar mensaje de error
        let alertController = UIAccessibilityAnnouncementNotification(title: "ATENCIÓN!!", message: mensaje, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
        //clearFields()
    }*/
    
    
    

}
