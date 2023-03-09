//
//  ViewController.swift
//  TimerProject
//
//  Created by Serdar Altındaş on 8.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 100
        myLabel.text = "TIME : \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (timeFunction), userInfo: nil, repeats: true)
    }
    @objc func timeFunction(){
        myLabel.text = "TIME : \(counter)"
        counter -= 1
        if counter <= 0 {
            timer.invalidate()
            myLabel.text = "TIME'S OVER!"
    }
    }
    @IBAction func buttonClicked(_ sender: Any)
    {
        print("Button Clicked!")
    }
    
}

