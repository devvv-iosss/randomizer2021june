//
//  SettingsViewController.swift
//  randomizer2021june
//
//  Created by Vladimir Syleimanov on 05.06.2021.
//

import UIKit


class SettingsViewController: UIViewController  {
    
    @IBOutlet var minimumTF: UITextField!
    @IBOutlet var maximumTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    var minValueSettingsVC = Int()
    var maxValueSettingsVC = Int()
    let maxValue = 101
    
    let letters = NSCharacterSet.letters
    
    override func viewDidLoad() {
        super .viewDidLoad()
        minimumTF.text = minimumValue
        maximumTF.text = maximumValue
    }
    
    @IBAction func saveButtonPressed(_ sender: AnyObject) {
        tfIntoInt ()
    }
    
    @IBAction func cancelAction() {
        dismiss(animated: true)
        // performSegue(withIdentifier: "unwindSegueIdent", sender: nil)
    }
    
    private  func tfIntoInt () {
        let minTF = Int(minimumTF.text ?? "")
        let maxTF = Int(maximumTF.text ?? "")
        if minTF! >= maxTF! || minTF! >= maxValue || maxTF! >= maxValue  {
            showAlert(with: "Wrong format", and: "Min can't be more max. Min = 0, max = 100")
        } else {
            return
                performSegue(withIdentifier: "unwindSegueThuesday", sender: nil)
            // сегуэ создаем путем перетаскивания линии в панели ДРЕВЕ элементов
            // даем сегуэ идентификатор
        }
    }
}

extension SettingsViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style:  .default) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
