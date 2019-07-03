//
//  ViewController.swift
//  iOS-D12-Calc
//
//  Created by Paolo Faccini on 12/06/2019.
//  Copyright © 2019 Paolo Faccini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt1: UILabel!
    @IBOutlet var numArray: [UIButton]!
    
    var val1 : Double = 0
    var curOp : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txt1.text = ""
        
        numArray = numArray.sorted(by: {
            $0.tag < $1.tag
        })
        
        for var i in 0..<numArray.count {
            var b = numArray[i]
            b.setTitle(String(b.tag), for: .normal)
        }
        
        
    }
  
    @IBAction func numClick(_ sender: UIButton) {
        
        txt1.text = txt1.text! + (sender.titleLabel?.text ?? "")
   
    }
    

    @IBAction func sinFunc(_ sender: UIButton) {
        if let v1 = Double(txt1.text!) {
            val1 = v1
        }
        var res:Double = 0
        res = sin(val1)
        return txt1.text = String(res)
    }
    @IBAction func cosFunc(_ sender: UIButton) {
        if let v1 = Double(txt1.text!) {
            val1 = v1
        }
        var res:Double = 0
        res = cos(val1)
        return txt1.text = String(res)
    }
    @IBAction func roundFunc(_ sender: UIButton) {
        if let v1 = Double(txt1.text!) {
            val1 = v1
        }
        var res:Double = 0
        res = round(val1)
        return txt1.text = String(res)
    }
    @IBAction func cancFunc(_ sender: UIButton) {
        return txt1.text = ""
    }
    @IBAction func floorFunc(_ sender: UIButton) {
        if let v1 = Double(txt1.text!) {
            val1 = v1
        }
        var res:Double = 0
        res = floor(val1)
        return txt1.text = String(res)
    }
    @IBAction func absFunc(_ sender: UIButton) {
        if let v1 = Double(txt1.text!) {
            val1 = v1
        }
        var res:Double = 0
        res = abs(val1)
        return txt1.text = String(res)
    }
    @IBAction func radice(_ sender: UIButton) {
        if let v1 = Double(txt1.text!) {
            val1 = v1
        }
        var res:Double = 0
        res = sqrt(val1)
        return txt1.text = String(res)
    }
    @IBAction func funcDot(_ sender: UIButton) {
        if(txt1.text?.contains(".")==false){
        txt1.text?.append(".");
        }
    }
    @IBAction func logFunc(_ sender: UIButton) {
        if let v1 = Double(txt1.text!) {
            val1 = v1
        }
        var res:Double = 0
        res = log(val1)
        return txt1.text = String(res)
    }
    @IBAction func tanFunc(_ sender: UIButton) {
        if let v1 = Double(txt1.text!) {
            val1 = v1
        }
        var res:Double = 0
        res = tan(val1)
        return txt1.text = String(res)
    }
    @IBAction func opProc(_ sender: UIButton) {
        
        var op = sender.tag
        
        if op<15 {
            
            curOp = op
            
            if let v1 = Double(txt1.text!) {
                val1 = v1
            }
            
            txt1.text = ""
            
        }else{
            
            // Tasto =
            
            if let v2 = Double(txt1.text!) {
            
                var res:Double = 0
                
                switch curOp {
                case 1: res = val1 + v2
                case 2: res = val1 - v2
                case 3: res = val1 * v2
                case 4: res = val1 / v2
                case 6: res = pow(val1, v2)
               
               
                default: print("error")
                }
                
                txt1.text = String(res)
                
            }
            
        }
    }
}

