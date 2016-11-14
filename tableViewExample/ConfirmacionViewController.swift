//
//  ConfirmacionViewController.swift
//  tableViewExample
//
//  Created by Samuel Ortega Sarmiento on 14/11/16.
//  Copyright © 2016 tmpCORP. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {

    
    var miPizza : Pizza?;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.miTamaño.text = miPizza?.tamaño
        self.miMasa.text   = miPizza?.masa
        self.miQueso.text  = miPizza?.queso
        self.miIngrediente.text = miPizza?.ingredientes
    }
    @IBOutlet weak var miMasa: UILabel!
    @IBOutlet weak var miTamaño: UILabel!
    @IBOutlet weak var miQueso: UILabel!
    @IBOutlet weak var miIngrediente: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
