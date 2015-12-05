//
//  InterfaceController.swift
//  iWatch_Pizza WatchKit Extension
//
//  Created by José Antonio on 4/12/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
        // variables
      var variable: [NSString] = ["Pequeña","Mediana","Grande"]
      var pos: Int = 0
    
    
      // IBOulets
    @IBOutlet var picker: WKInterfacePicker!
    
    
    override func awakeWithContext(context: AnyObject?) {
        
        super.awakeWithContext(context)
        
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
    
    
    
    @IBAction func tipoPizza(value: Int) {
        pos = value
    }
    
    
    
    @IBAction func pantallaDos() {
        
        let tipo = Uno(tp: String(variable[pos]), tm:"", tq:"", i: "")
        pushControllerWithName("IdenDos", context: tipo)
        
    }

   
    

}
