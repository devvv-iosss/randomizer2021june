//
//  SettingsViewController.swift
//  randomizer2021june
//
//  Created by Vladimir Syleimanov on 05.06.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimumTF: UITextField!
    @IBOutlet var maximumTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        minimumTF.text = minimumValue
        maximumTF.text = maximumValue
    }
    
    
    
    
    @IBAction func saveButtonPressed() {

 
        
        
    }
    
    

    
    @IBAction func cancelAction() {
        
        dismiss(animated: true)
    }
    
 

    
    
    
}
