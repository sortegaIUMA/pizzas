//
//  Pizza.swift
//  tableViewExample
//
//  Created by Samuel Ortega Sarmiento on 14/11/16.
//  Copyright © 2016 tmpCORP. All rights reserved.
//

import Foundation

var tipoTamaño      : [String]? = ["Chica", "Mediana", "Grande"];
var tipoMasa        : [String]? = ["Fina", "Gruesa", "Crujiente"];
var tipoQueso       : [String]? = ["Mozarella", "Parmesano", "Cheddar", "Sin queso"]
var tipoIngrediente : [String]? = ["Jamón", "Peperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Atún", "Bacon"];


class Pizza  {
    var tamaño: String?
    var masa  : String?
    var queso : String?
    var ingredientes : [String]?
    
    init() {
        self.tamaño       = nil;
        self.masa         = nil;
        self.queso        = nil;
        self.ingredientes = nil;
        
        
    }
}
