//
//  IngredientesViewController.swift
//  tableViewExample
//
//  Created by Samuel Ortega Sarmiento on 14/11/16.
//  Copyright © 2016 tmpCORP. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTable: UITableView!
    
    var miPizza : Pizza?;
    var lista = tipoIngrediente
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myTable = UITableView(frame: view.bounds)
        view.addSubview(myTable)
        self.myTable = myTable
        
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TableView:
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let element = lista?[indexPath.row]
        
        // Instantiate a cell
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "ElementCell")
        
        // Adding the right informations
        cell.textLabel?.text = element;
        
        // Returning the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Do something:
        miPizza?.ingredientes = lista?[indexPath.row]
        
        // Navigation:
        let viewController = storyboard?.instantiateViewController(withIdentifier: "ConfirmacionView") as! ConfirmacionViewController
        viewController.miPizza = self.miPizza
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    
}

