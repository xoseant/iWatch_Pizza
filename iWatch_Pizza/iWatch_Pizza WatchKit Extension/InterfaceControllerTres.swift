//
//  InterfaceControllerTres.swift
//  iWatch_Pizza
//
//  Created by José Antonio on 4/12/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerTres: WKInterfaceController {

    
      // variables
    var variable: [NSString] = ["Mozzarela","Chedar","Parmesano","Sin Queso"]
    var pos: Int = 0
    var auxTamaño: String = ""
    var auxTipo: String = ""
    
    
      // IBOulets
    @IBOutlet var picker: WKInterfacePicker!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        let a = context as! Uno
        auxTamaño = a.tipoPizza
        auxTipo = a.tipoMasa
        
        
        var pickerItems: [WKPickerItem] = []
        for (var i = 0; i <= 3; i++ ) {
            let item = WKPickerItem()
            item.title = String(variable[i])
            pickerItems.append(item)
        }
        
        self.picker.setItems(pickerItems)
        
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    @IBAction func tipoMasa(value: Int) {
        pos = value
    }


    
    @IBAction func pantallaCuatro() {
        
        let queso = Uno(tp: auxTamaño, tm: auxTipo, tq: String(variable[pos]), i: "")
        pushControllerWithName("IdenCuatro", context: queso)
        
    }

    

}
