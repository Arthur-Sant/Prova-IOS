//
//  ViewController.swift
//  AppProva
//
//  Created by COTEMIG on 16/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    /* Autor do projeto
     nome: Arthur Santiago Aguiar
     matricula: 22002324
     numero de chamada: 7
     */

    @IBOutlet weak var tableView: UITableView!
    
    let userDefault = UserDefaults.standard
    
    var arrayProduct: [[String: Any]] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let listProduct = userDefault.value(forKey: "user") as? [[String: Any]] {
            self.arrayProduct = listProduct
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)

        if let listProduct = userDefault.value(forKey: "user") as? [[String: Any]] {
            self.arrayProduct = listProduct
        }
        
        tableView.reloadData()
        
    }
    
}



