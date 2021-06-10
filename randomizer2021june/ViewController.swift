//
//  ViewController.swift
//  randomizer2021june
//
//  Created by Vladimir Syleimanov on 05.06.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var zeroLabel: UILabel!
    @IBOutlet var maxLabel: UILabel!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var resultButton: UIButton!
    
    @IBOutlet var randomRangeButton: UIButton!
    
    private let arrayNumbers1 = 0...50
    private let arrayNumbers2 = 50...100
    
    var min = Int()
    var max = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is SettingsViewController {
            guard let settingsVC = segue.destination as? SettingsViewController  else { return }
            settingsVC.minimumValue = zeroLabel.text
            settingsVC.maximumValue = maxLabel.text
   
    }
    }
    
    
    
    
    
    
    @IBAction func randomRangeButtonPressed() {
        
        minAndMax()
        zeroLabel.text = String(min)
        maxLabel.text = String(max)
    }
    
    @IBAction func getResultPressed() {

        resultLabel.text = String(Int.random(in: min ... max))

    }
    
   
    private func minAndMax() {
        
        min = Int(arrayNumbers1.randomElement() ?? 000)
        max = Int(arrayNumbers2.randomElement() ?? 0000)
    }
    
    @IBAction func unwindSegue (segue: UIStoryboardSegue) {
        
        guard let settingsVC = segue.source as? SettingsViewController else {
            return
        }
        
        zeroLabel.text = settingsVC.minimumTF.text
        maxLabel.text =  settingsVC.maximumTF.text

        
    }
    
 
 
    
    
    
}




    



