//
//  ViewController.swift
//  Egg Timer
//
//  Created by mmslab on 2017/2/22.
//  Copyright © 2017年 mmslab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var timer = NSTimer()
    
    
    
    var TimeCounter = 200
    
    @IBOutlet var TimeLabel: UILabel!
    
    @IBAction func Reset(sender: AnyObject) {
        timer.invalidate()
        TimeCounter = 200
        TimeLabel.text = "\(TimeCounter)"
    }
    
    @IBAction func Plus(sender: AnyObject) {
        TimeCounter += 10
        TimeLabel.text = "\(TimeCounter)"
    }
    
    @IBAction func Decrease(sender: AnyObject) {

        if TimeCounter > 10 {
            TimeCounter -= 10
        }
        
        TimeLabel.text = "\(TimeCounter)"
    }
    
    @IBAction func PlayBar(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(DecreaseOne), userInfo: nil, repeats: true)
    }
  
    @IBAction func PauseBar(sender: AnyObject) {
         timer.invalidate()
    }

    func DecreaseOne (){
        TimeCounter -= 1
        
        if TimeCounter == 0  {
            timer.invalidate()
        }
        
        TimeLabel.text = "\(TimeCounter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

