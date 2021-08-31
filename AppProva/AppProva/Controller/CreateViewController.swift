//
//  CreateViewController.swift
//  AppProva
//
//  Created by COTEMIG on 16/08/21.
//

import UIKit

class CreateViewController: UIViewController {
    
    
    @IBOutlet weak var inputProductName: UITextField!
    @IBOutlet weak var inputProductDescription: UITextView!
    @IBOutlet weak var inputProductPrince: UITextField!
    
    let userDefault = UserDefaults.standard
    
    
    @IBAction func btnSalvar(_ sender: Any) {
        
        if !inputProductName.text!.isEmpty &&
            !inputProductDescription.text!.isEmpty &&
            !inputProductPrince.text!.isEmpty {
            
            let princeDouble: Double = Double(inputProductPrince.text!)!
            
            let product = Product(name: inputProductName.text!,
                                  description: inputProductDescription.text!,
                                  prince: princeDouble)
            
            
            var products: [[String: Any]] = []
            
            if let array = userDefault.value(forKey: "user") as? [[String : Any]]{
                products = array
            }
            
            let productDict = ["name": product.name,
                               "description": product.description,
                               "prince": product.prince] as [String : Any]
            
            products.append(productDict)
            
            userDefault.setValue(products, forKey: "user")
            
            navigationController?.popViewController(animated: true)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
