//
//  ViewController.swift
//  Egg Timer
//
//  Created by TrendPower on 2023/8/10.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    var player: AVAudioPlayer?
    let eggTimes = ["Soft":300, "Medium":420, "Hard":720]
    var count = 0
    var timer = Timer()
    var eggTime = 0
    var countup = 0
    var hardness = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        onReset()
        hardness = sender.currentTitle!
        count = eggTimes[hardness]!
        eggTime = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
       
    }
    @objc func update() {
        if(count > 0) {
            print(count)
            timerLabel.text = "\(hardness) \n "+String(count)+" s"
            count-=1
        }else{
            
            timer.invalidate()
            timerLabel.text = "Boiled \(hardness) Egg \nDone!"
            playSound()
        }
        
        progressView.progress = Float(countup)/Float(eggTime)
        countup+=1
    }
    func onReset(){
        progressView.progress = 0.0
        countup = 0
        timer.invalidate()
        timerLabel.text = "How do you like your eggs?"
    }
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
            
        }catch let error{
            print(error.localizedDescription)
        }
        
        
    }
}

