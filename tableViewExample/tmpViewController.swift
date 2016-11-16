//
//  tmpViewController.swift
//  tableViewExample
//
//  Created by Samuel Ortega Sarmiento on 16/11/16.
//  Copyright © 2016 tmpCORP. All rights reserved.
//

import UIKit

class tmpViewController: UIViewController {

    
    var miPizza : Pizza?;
    var myLabels : [UILabel]?;
    
    @IBOutlet weak var miTamaño: UILabel!
    @IBOutlet weak var miMasa: UILabel!
    
    @IBOutlet weak var miQueso: UILabel!
    @IBOutlet weak var miIngrediente1: UILabel!
    
    @IBOutlet weak var miIngrediente2: UILabel!
    @IBOutlet weak var miIngrediente3: UILabel!
    @IBOutlet weak var miIngrediente4: UILabel!
    @IBOutlet weak var miIngrediente5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.miTamaño.text = miPizza?.tamaño
        self.miMasa.text   = miPizza?.masa
        self.miQueso.text  = miPizza?.queso
        self.miIngrediente1.text = miPizza?.ingredientes?[0]
        
        self.myLabels = [miIngrediente1,
                         miIngrediente2,
                         miIngrediente3,
                         miIngrediente4,
                         miIngrediente5]
             let numeroIngredientes :Int = (miPizza?.ingredientes?.count)!
             for k in 1 ... numeroIngredientes {
                self.myLabels?[k-1].text = miPizza?.ingredientes?[k-1]
             }
        
        for k in numeroIngredientes + 1 ... 5 {
            self.myLabels?[k-1].isHidden = true; //  text = "-----"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
        
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
