//
//  ViewController.swift
//  TimerProject
//
//  Created by neodiyadin on 10.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0
    
    @IBOutlet weak var mylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        mylabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timefunction) , userInfo: nil, repeats: true)
        
        
    }
    
    @objc func timefunction() {
        mylabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            mylabel.text = "time is over"
        }
    }
    
    

    @IBAction func buttonclicked(_ sender: Any) {
        
        print("button cliicked")
    }
    
}

