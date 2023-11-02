//
//  ViewController.swift
//  My First Project
//
//  Created by Sumeyra Altas on 2.11.2023.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var firstNumber: Double?
    var secondNumber: Double?
    var currentOperation: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func numberButtonPressed(_ sender: UIButton) {
        if let digit = sender.currentTitle, let currentText = resultLabel.text {
            resultLabel.text = currentText + digit
        }
    }
    
    @IBAction func operationButtonPressed(_ sender: UIButton) {
        if let operation = sender.currentTitle, let currentText = resultLabel.text {
            firstNumber = Double(currentText)
            currentOperation = operation
            resultLabel.text = ""
        }
    }
    
    @IBAction func equalButtonPressed(_ sender: UIButton) {
        if let firstNum = firstNumber, let currentText = resultLabel.text {
            if let secondNum = Double(currentText) {
                switch currentOperation {
                case "+":
                    resultLabel.text = "\(firstNum + secondNum)"
                case "-":
                    resultLabel.text = "\(firstNum - secondNum)"
                case "×":
                    resultLabel.text = "\(firstNum * secondNum)"
                case "÷":
                    resultLabel.text = "\(firstNum / secondNum)"
                default:
                    break
                }
            }
        }
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        firstNumber = nil
        secondNumber = nil
        currentOperation = nil
        resultLabel.text = ""
    }
}
