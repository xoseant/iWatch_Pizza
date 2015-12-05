//
//  InterfaceControllerCuatro.swift
//  iWatch_Pizza
//
//  Created by José Antonio on 4/12/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerCuatro: WKInterfaceController {
    
    
      // variables
    var copia = [Int:String]()
    var auxTamaño: String = ""
    var auxTipo: String = ""
    var auxQueso: String = ""
    var cadena: String?
    var timer: NSTimer?
     var pos: Int = 0
    var p: String = ""

    
      // IBOulets..
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var peperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var chorizo: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var anchoas: WKInterfaceSwitch!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let p = context as! Uno
        auxTamaño = p.tipoPizza
        auxTipo = p.tipoMasa
        auxQueso = p.tipoQueso
        
    }

    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func jamon(value: Bool) {
        if (value == true) {
            copia[0] = "Jamon,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(0)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    @IBAction func peperoni(value: Bool) {
        if (value == true) {
            copia[1] = "Peperoni,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(1)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func pavo(value: Bool) {
        if (value == true) {
            copia[2] = "Pavo,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(2)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func salchicha(value: Bool) {
        if (value == true) {
            copia[3] = "Salchicha,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(3)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func chorizo(value: Bool) {
        if (value == true) {
            copia[4] = "Chorizo,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(4)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func cebolla(value: Bool) {
        if (value == true) {
            copia[5] = "Cebolla,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(5)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func pimiento(value: Bool) {
        if (value == true) {
            copia[6] = "Pimiento,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(6)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func anchoas(value: Bool) {
        if (value == true) {
            copia[7] = "Anchoas,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(7)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    
    func dic_String(lista: Array<String>) -> String {
        p = ""
        for (var i = 0; i < lista.count; i++) {
            p += lista[i] + " "
        }
        return p
    }
    
    
    
    @IBAction func pantallaCinco() {
        
        let ultima = Uno(tp: auxTamaño, tm: auxTipo, tq: auxQueso, i:p)
        pushControllerWithName("IdenCinco", context: ultima)
        
    }

    
}
