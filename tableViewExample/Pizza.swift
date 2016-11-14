//
//  Pizza.swift
//  tableViewExample
//
//  Created by Samuel Ortega Sarmiento on 14/11/16.
//  Copyright © 2016 tmpCORP. All rights reserved.
//

import Foundation

var tipoTamaño      : [String]? = ["Grande", "Mediana", "Pequeña"];
var tipoMasa        : [String]? = ["Fina", "Gruesa", "tres", "Cuatro"];
var tipoQueso       : [String]? = ["Mozarella", "Parmesano", "Q3", "Q4", "Q5"]
var tipoIngrediente : [String]? = ["Gambas", "Bacon", "Piña"];

class Pizza  {
    var tamaño: String?
    var masa  : String?
    var queso : String?
    var ingredientes : String?
    
    init() {
        self.tamaño       = nil;
        self.masa         = nil;
        self.queso        = nil;
        self.ingredientes = nil;
    }
}
