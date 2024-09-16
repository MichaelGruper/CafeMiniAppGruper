//
//  ViewController.swift
//  CafeMiniAppGruper
//
//  Created by MICHAEL GRUPER on 9/13/24.
//

import UIKit

class ViewController: UIViewController {
    var items : [String] = ["Chicken", "Beef", "Rice", "Pasta", "Cheese"]
    var prices : [Double] = [3.79, 4.26, 2.99, 3.50, 2.90]
    var cart: [String:Int] = [:]
    @IBOutlet weak var itemTextFieldOutlet: UITextField!
    @IBOutlet weak var quantityTextFieldOutlet: UITextField!
    @IBOutlet weak var textViewOutlet: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<items.count {
            textViewOutlet.text += "Item: \(items[i])\n Price: $\(prices[i])\n \n"
        }
    }
    
    @IBAction func submitButtonAction(_ sender: UIButton) {
        cart[itemTextFieldOutlet.text!] = Int(quantityTextFieldOutlet.text!) ?? 1
        textViewOutlet.text += "\n \(cart)"
}
    
}

