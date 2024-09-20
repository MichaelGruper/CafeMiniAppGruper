//
//  ViewController.swift
//  CafeMiniAppGruper
//
//  Created by MICHAEL GRUPER on 9/13/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var errorLabelOutlet: UILabel!
    var items : [String] = ["Chicken", "Beef", "Rice", "Pasta", "Cheese"]
    var prices : [Double] = [3.79, 4.26, 2.99, 3.50, 2.90]
    var cart: [String:Int] = [:]
    @IBOutlet weak var itemTextFieldOutlet: UITextField!
    @IBOutlet weak var quantityTextFieldOutlet: UITextField!
    @IBOutlet weak var displayTextViewOutlet: UITextView!
    
    @IBOutlet weak var cartTextViewOutlet: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<items.count {
            displayTextViewOutlet.text += "Item: \(items[i])\n Price: $\(prices[i])\n \n"
        }
    }
    //need to show input on different text view
    @IBAction func submitButtonAction(_ sender: UIButton) {
        var found = false
        var inCart = false
        for i in items{
            if itemTextFieldOutlet.text! == i.lowercased() || itemTextFieldOutlet.text! == i{
                found = true
                errorLabelOutlet.isHidden = true
            }
        }
        if !found {
            errorLabelOutlet.text = "Error: Enter a Valid Item!"
            errorLabelOutlet.isHidden = false
        }
        if found {
            for object in cart{
                if itemTextFieldOutlet.text! == object.key || itemTextFieldOutlet.text! == object.key.lowercased(){
                    errorLabelOutlet.text = "Error: Item in Cart!"
                    errorLabelOutlet.isHidden = false
                    inCart = true
                }
            }
            if !inCart{
                cart[itemTextFieldOutlet.text!] = Int(quantityTextFieldOutlet.text!) ?? 1
                var fr = ""
                for object in cart{
                    fr += " Item: \(object.key)\n Quantity: \(object.value)\n"
                }
                cartTextViewOutlet.text = fr
            }
        }
}
    
}

