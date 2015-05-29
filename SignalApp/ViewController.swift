//
//  ViewController.swift
//  SignalApp
//
//  Created by hirosawak on 2015/05/22.
//  Copyright (c) 2015年 hirosawak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var DisplayImages: UIImageView!
    @IBOutlet weak var DisplayText: UILabel!
    
    var redImage:UIImage!
    var blueImage:UIImage!
    var yellowImage:UIImage!
    
    var stateSignal:Int = 0

    var timer = NSTimer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        stateSignal = 1
        
        blueImage = UIImage(named: "signal_blue.png")
        yellowImage = UIImage(named: "signal_yellow.png")
        redImage = UIImage(named: "signal_red.png")
        
//        timer = NSTimer.scheduledTimerWithTimeInterval(5.0,target:self,selector:Selector(ChangeColor(stateSignal)),
//            userInfo: nil, repeats: true);
        
    }

    func ChangeColor(num:Int){
        if num == 0 {
            DisplayText.text = "渡っちゃだめ！"
            DisplayImages.image = redImage
        }else if num == 1 {
            DisplayText.text = "いそいで！"
            DisplayImages.image = yellowImage
        }else {
            DisplayText.text = "渡っていいよ！"
            DisplayImages.image = blueImage
        }
        stateSignal = (num + 1) % 3
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func redBtn(sender: AnyObject) {
        DisplayText.text = "信号が赤になりましたよ！"
        DisplayImages.image = redImage
    }
    
    @IBAction func yellowBtn(sender: AnyObject) {
        DisplayText.text = "信号が黄色になりましたよ！"
        DisplayImages.image = yellowImage
    }

    @IBAction func blueBtn(sender: AnyObject) {
        DisplayText.text = "信号が青になりましたよ！"
        DisplayImages.image = blueImage
    }

    
    
}

