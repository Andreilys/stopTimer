//
//  ViewController.swift
//  Stopwatch
//
//  Created by Andrei on 1/18/15.
//  Copyright (c) 2015 Andrei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    @IBOutlet weak var time: UILabel!
    var count = 0
    
    
    @IBAction func play(sender: AnyObject) {
         timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: ("result"), userInfo: nil, repeats: true)
    }
    

    @IBAction func pause(sender: UIBarButtonItem) {
        timer.invalidate()
    }

    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        count = 0
        time.text = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    func result(){
        count++
        time.text = String(count)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

