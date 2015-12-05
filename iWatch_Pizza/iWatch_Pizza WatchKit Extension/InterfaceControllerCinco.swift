//
//  InterfaceControllerCinco.swift
//  iWatch_Pizza
//
//  Created by José Antonio on 4/12/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerCinco: WKInterfaceController {
    
      // Varibles
    var auxPizza: String = ""
    var auxTamaño: String = ""
    var auxMasa: String = ""
    var auxIng: String = ""
    
    
      //IBOulets
    @IBOutlet var tipoPizza: WKInterfaceLabel!
    @IBOutlet var tipoQueso: WKInterfaceLabel!
    @IBOutlet var tipoMasa: WKInterfaceLabel!
    @IBOutlet var tipoIngredientes: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let Pedido = context as! Uno
        tipoPizza.setText(String(Pedido.tipoPizza))
        tipoMasa.setText(String(Pedido.tipoMasa))
        tipoQueso.setText(String(Pedido.tipoQueso))
        tipoIngredientes.setText(String(Pedido.tipoIngre))
    
    }

    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    @IBAction func retorno() {
        let clear = Uno(tp: "", tm: "", tq: "", i: "")
        pushControllerWithName("IdenUno", context: clear)
        
    }
    

}
