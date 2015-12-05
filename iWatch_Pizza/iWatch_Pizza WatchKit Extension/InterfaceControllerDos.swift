//
//  InterfaceControllerDos.swift
//  iWatch_Pizza
//
//  Created by José Antonio on 4/12/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerDos: WKInterfaceController {
    
      // variables
    var variable: [NSString] = ["Delgada","Crujiente","Gruesa"]
    var pos: Int = 0
    var auxTipo: String = ""
    
    
      // IBOulets
    @IBOutlet var picker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        
        super.awakeWithContext(context)
        
        let tp = context as! Uno
        auxTipo = tp.tipoPizza

        
        var pickerItems: [WKPickerItem] = []
        for (var i = 0; i <= 2; i++ ) {
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

    
    
    @IBAction func pantallaTres() {
        
        let masa = Uno(tp: auxTipo, tm: String(variable[pos]), tq: "", i: "")
        pushControllerWithName("IdenTres", context: masa)
        
    }
    

    
    
}
