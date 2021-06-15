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
    
    private let arrayNumbers = 0...100
    
    private  var min = 0
    private  var max: Int = 0
    private  let maxValue = 101
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNumberIntoRandomButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is SettingsViewController {
            guard let settingsVC = segue.destination as? SettingsViewController  else { return }
            settingsVC.minimumValue = zeroLabel.text
            settingsVC.maximumValue = maxLabel.text
            // передаем значения из лейблов в текстфилд
        }
    }
    
    @IBAction func randomRangeButtonPressed() {
        randomNumberIntoRandomButton()
    }
    
    @IBAction func getResultPressed(_ sender: UIButton) {
        //resultLabel.text = String(Int.random(in: min ... max))
        // нажатие кнопки GetResult
        getRandomFromTF()
        
    }
    
    func randomNumberIntoRandomButton() {
        if min <= 99 {
            max = Int.random(in: min...100)
            zeroLabel.text = String(min)
            maxLabel.text = String(max)
            // делаем для кнопки рандом метод
        }
    }
    
    private func getRandomFromTF() {
        guard let zeroInt = Int(zeroLabel.text ?? "error") else { return }
        guard let maxInt = Int(maxLabel.text ?? "error") else { return }
        
        let randomInt = Int.random(in: zeroInt..<maxInt)
        
        resultLabel.text = String(randomInt)
        
        // конвертируем лейбл в Int
        // вызываем рандомно метод из закрытого диапазона
    }
    
    @IBAction func unwindSegue (segue: UIStoryboardSegue) {
        
        // со второго VC мы передае на этот
        
        guard let settingsVC = segue.source as? SettingsViewController else {
            return
        }
        
        settingsVC.maxValueSettingsVC = Int(settingsVC.maximumTF.text ?? "") ?? 0
        settingsVC.minValueSettingsVC = Int(settingsVC.minimumTF.text ?? "") ?? 0
        
        //из текст филда получаем Int
        
        zeroLabel.text = String(settingsVC.minValueSettingsVC)
        maxLabel.text = String(settingsVC.maxValueSettingsVC)
        
        //передаем с TF в лейблы на первый экран
    }
    
}
