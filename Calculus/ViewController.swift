//
//  ViewController.swift
//  Cuyler
//
//  Created by Christopher Anderson on 4/19/18.
//  Copyright © 2018 Christopher Anderson. All rights reserved.
//

import UIKit
import AVFoundation


extension UIView {
    
    //rotates imageUIbuttons continuously 360 degrees
    func rotate360Degrees(duration: CFTimeInterval = 40) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(Double.pi * 2)
        rotateAnimation.isRemovedOnCompletion = false
        rotateAnimation.duration = duration
        rotateAnimation.repeatCount=Float.infinity
        self.layer.add(rotateAnimation, forKey: nil)
    }
}

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    @IBOutlet var Button5: UIButton!
    @IBOutlet var Button6: UIButton!
    @IBOutlet var Button7: UIButton!
    @IBOutlet var Button8: UIButton!
    @IBOutlet var Button9: UIButton!
    @IBOutlet var Button10: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        Button1.rotate360Degrees()
        Button2.rotate360Degrees()
        Button3.rotate360Degrees()
        Button4.rotate360Degrees()
        Button5.rotate360Degrees()
        Button6.rotate360Degrees()
        Button7.rotate360Degrees()
        Button8.rotate360Degrees()
        Button9.rotate360Degrees()
        Button10.rotate360Degrees()

        
        
        
        
    }
    
    //    func spinButtons(){
    //            button1.rotate360Degrees()
    ////            button2.rotate360Degrees(speed: Int(arc4random_uniform(50)) + 1)
    ////            button3.rotate360Degrees(speed: Int(arc4random_uniform(50)) + 1)
    ////            button4.rotate360Degrees(speed: Int(arc4random_uniform(50)) + 1)
    ////            button5.rotate360Degrees(speed: Int(arc4random_uniform(50)) + 1)
    //    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
    }
    
    //plays a random audio file when a image is pressed
    @IBAction func play(_ sender: AnyObject) {
        let n = Int(arc4random_uniform(8)) + 1
        do {
            let music = Bundle.main.path(forResource: "sound\(n)", ofType: "mp3")
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: music!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    @IBAction func stop(_ sender: AnyObject) {
        audioPlayer.stop()
    }
    
//    func rand() -> Int{
//        return 3
//    }
    
    
}

