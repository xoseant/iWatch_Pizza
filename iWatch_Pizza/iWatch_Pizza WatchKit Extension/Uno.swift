//
//  Uno.swift
//  iWatch_Pizza
//
//  Created by José Antonio on 5/12/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import WatchKit

class Uno: NSObject {
    
    var tipoPizza: String = ""
    var tipoMasa: String = ""
    var tipoQueso: String = ""
    var tipoIngre: String = ""
    
    
    init(tp: String, tm: String, tq: String, i: String) {
        self.tipoPizza = tp
        self.tipoMasa = tm
        self.tipoQueso = tq
        self.tipoIngre = i
    }
    

}
