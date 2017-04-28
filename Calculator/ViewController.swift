//
//  ViewController.swift
//  Calculator
//
//  Created by Scott Kriss on 1/25/17.
//  Copyright © 2017 Scott Kriss. All rights reserved.
//

import UIKit

enum modes {
    case not_set
    case addition
    case subtraction
}

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var labelString:String = "0"
    var currentMode:modes = .not_set
    var savedNum:Int = 0
    var lastButtonWasMode:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func didPressPlus(_ sender: Any) {
    }
    @IBAction func didPressSubtract(_ sender: Any) {
    }
    @IBAction func didPressEquals(_ sender: Any) {
    }
    @IBAction func didPressClear(_ sender: Any) {
        
        labelString = "0"
        currentMode = .not_set
        savedNum = 0
        lastButtonWasMode = false
        label.text = "0"
        
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        
        let stringValue:String? = sender.titleLabel?.text
        labelString = labelString.appending(stringValue!)
        updateText()
        
    }
    
    func updateText(){
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        label.text = "\(labelInt)"
    }
    
    func changeMode(newMode:modes){
        
        
    }
    
    
    
}

