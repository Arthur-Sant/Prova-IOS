//
//  TableViewController.swift
//  AppProva
//
//  Created by COTEMIG on 16/08/21.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblProductPrince: UILabel!
    @IBOutlet weak var lblProductDescription: UILabel!
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductCell
        
        let product = arrayProduct[indexPath.row]
        
        cell.lblProductName.text = product["name"] as? String
        cell.lblProductPrince.text = "R$ \(product["prince"] as! Double)"
        cell.lblProductDescription.text = product["description"] as? String
        
        return cell
    }
            
}

extension ViewController: UITableViewDelegate {
    
}
