//
//  ViewController.swift
//  221014_RealCalculater
//
//  Created by 고도 on 2022/10/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var historyLabel: UILabel!
    
    var firstOperand: Float = 0
    var secondOperand: Float = 0
    var number: String = ""
    
    override func viewDidLoad() {
        self.resultLabel.text = number
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 피연산자(숫자)
    @IBAction func tapDecimalButton(_ sender: UIButton) {
        // 옵셔널 바인딩 적용
        guard let decimal = sender.titleLabel?.text else { return }
        
        number += decimal
        
        self.resultLabel.text = number
    }
    
    // 피연산자가 두 개인 연산자
    @IBAction func tapOperatorButton(_ sender: UIButton) {
        // 옵셔널 바인딩 적용
        if let num = Float(number) {
            firstOperand = num
        }
        // 숫자를 저장하기 위한 문자열 초기화
        number = ""
    }
    
    // 피연산자가 한 개인 연산자
    @IBAction func tapNeedOneOperandButton(_ sender: UIButton) {
        // 옵셔널 바인딩 적용
        if let num = Float(number) {
            firstOperand = num
        }
        
        var temp: String = ""
        guard let op = sender.titleLabel?.text else { return }
        
        switch op {
        case "+/-":
            temp = "\(firstOperand * -1)"
  
        default:
            temp = "\(firstOperand * 0.01)"
        }
        
        number = temp
        self.resultLabel.text = temp
        
    }
    
    // 결과, 삭제
    @IBAction func tapCalculateOrClearButton(_ sender: UIButton) {
        number = ""
        firstOperand = 0
        secondOperand = 0
        self.resultLabel.text = number
    }
}

