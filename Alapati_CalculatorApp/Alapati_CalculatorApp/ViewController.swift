//
//  ViewController.swift
//  Alapati_CalculatorApp
//
//  Created by Harshitha Alapati on 9/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultOutlet: UILabel!
    var _optr = " "
    var num1 = 0.0
    var num2 = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultOutlet.text = ""
    }
    
    
    @IBAction func buttonAC(_ sender: UIButton) {
        resultOutlet.text = ""
        _optr = " "
        num1 = 0
        num2 = 0.0
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        var c = String(resultOutlet.text!)
        if(!c.isEmpty ){
        c.removeLast()
        }
        resultOutlet.text = c
    }
    
    
    @IBAction func buttonPlusorMinus(_ sender: UIButton) {
        let c = resultOutlet.text!
        if(_optr=="+"){
            _optr = "-"
           resultOutlet.text = "-" + c
           }else{
               _optr = "+"
            resultOutlet.text = "-" + c
           }
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        _optr = "/"
        num1 = Double(resultOutlet.text!) ?? 0
        resultOutlet.text = ""

    }
    
    
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        _optr = "*"
        num1 = Double(resultOutlet.text!) ?? 0
        resultOutlet.text = ""
    }
    
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        _optr = "-"
        num1 = Double(resultOutlet.text!) ?? 0
        resultOutlet.text = ""
    }
    
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        _optr = "+"
        num1 = Double(resultOutlet.text!) ?? 0
        resultOutlet.text = ""

    }
    
    
    @IBAction func buttonPoint(_ sender: UIButton) {
        let c  = resultOutlet.text!
        if(!(c.contains(".")))
            {
            resultOutlet.text = resultOutlet.text! + "."
                    return
        }
        
    }
    
    
    @IBAction func buttonModulus(_ sender: UIButton) {
        _optr = "%"
        num1 = Double(resultOutlet.text!) ?? 0.0
        resultOutlet.text = ""
    }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        if(resultOutlet.text!.contains("-")){
            resultOutlet.text!.removeFirst()
        }
        num2 = Double(resultOutlet.text!) ?? 0.0
        var result :Double = 0
        resultOutlet.text = resultOutlet.text! + "="
        let c = _optr
        if(c.contains("+")){
            result = Double(num1) + num2
            var a = String(result)
            if(a.contains(".0")){
                resultOutlet.text = "\(Int(result))"
            }
            else{
                resultOutlet.text = "\(Double(result))"
            }
        }
        if(c.contains("-")){
            result = Double(num1) - num2
            resultOutlet.text = "\(Int(result))"
        }
        if(c.contains("*")){
            result = Double(num1) * num2
            resultOutlet.text = "\(Int(result))"
        }
        if(c.contains("/")){
            if(num2==0){
                resultOutlet.text = "Not a number"
            }
            else{
                result = Double(num1) / num2
                resultOutlet.text = "\(round(result * 100000)/100000.0)"
            }
        }
        if(c.contains("%")){
            if(String(num1).contains(".") || String(num2).contains(".")){
                result = Double(num1).truncatingRemainder(dividingBy: Double(num2))
                resultOutlet.text = "\(round(result * 100) / 100.0 )"
            }
            else {
            result = Double(Int(num1) % Int(num2))
            resultOutlet.text = "\(Int(result))"
            }
    }
    }
    
    
    @IBAction func buttonZero(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "0"
        
    }
    
    
    @IBAction func buttonOne(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "1"
    }
    
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "2"
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "3"

    }
    
    
    @IBAction func buttonFour(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "4"

    }
    
    
    @IBAction func buttonFive(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "5"
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "6"
    }
    
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "7"
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "8"
    }
    
    
    @IBAction func buttonNine(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "9"
    }
}

