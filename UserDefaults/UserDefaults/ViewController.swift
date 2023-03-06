//
//  ViewController.swift
//  UserDefaults
//
//  Created by sainath bamen on 14/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myLabelTect: UILabel!
    
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UserDefaults.standard.string(forKey: "username")
        
        if value != nil{
            myTextField.text = "Hello \(value!)"

        }
    }

    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(myTextField, forKey: "username")
        let alert = UIAlertController(title: "Saving", message: "Data saved in UserDefaults Successfully", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default) { (action) in
            print("Data has been saved")
        }
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
        myTextField.text = ""
    }
    
}

