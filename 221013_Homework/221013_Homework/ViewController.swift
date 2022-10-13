//
//  ViewController.swift
//  221013_Homework
//
//  Created by 고도 on 2022/10/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstOperand: UITextField!
    @IBOutlet weak var secondOperand: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tapAddButton(_ sender: Any) {
        let oper1 = Int(firstOperand?.text ?? "") ?? 0
        let oper2 = Int(secondOperand?.text ?? "") ?? 0
        let number: Double = self.calculate(oper1: oper1, oper2: oper2, op: 0)
        
        resultLabel.text = String(Int(number))
    }
    
    @IBAction func tapAbstractButton(_ sender: Any) {
        let oper1 = Int(firstOperand?.text ?? "") ?? 0
        let oper2 = Int(secondOperand?.text ?? "") ?? 0
        let number: Double = self.calculate(oper1: oper1, oper2: oper2, op: 1)
        
        resultLabel.text = String(Int(number))
    }
    
    @IBAction func tapMultiplyButton(_ sender: Any) {
        let oper1 = Int(firstOperand?.text ?? "") ?? 0
        let oper2 = Int(secondOperand?.text ?? "") ?? 0
        let number: Double = self.calculate(oper1: oper1, oper2: oper2, op: 2)
        
        resultLabel.text = String(Int(number))
    }
    
    
    @IBAction func tapDivideButton(_ sender: Any) {
        let oper1 = Int(firstOperand?.text ?? "") ?? 0
        let oper2 = Int(secondOperand?.text ?? "") ?? 1
        let number: Double = self.calculate(oper1: oper1, oper2: oper2, op: 3)
        
        resultLabel.text = String(number)
    }
    
    func calculate(oper1: Int, oper2: Int, op: Int) -> Double {
        var result: Double = 0
        
        switch op {
        case 0:
            result = (Double) (oper1 + oper2)
        case 1:
            result = (Double) (oper1 - oper2)
        case 2:
            result = (Double) (oper1 * oper2)
        case 3:
            result = Double(oper1) / Double(oper2)
        default:
            result = 0
        }
        
        return result
    }
}

