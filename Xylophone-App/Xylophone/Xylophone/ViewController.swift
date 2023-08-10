//
//  ViewController.swift
//  Xylophone
//
//  Created by TrendPower on 2023/8/10.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2, animations: {
            sender.alpha = 0.5
        }) { _ in
            // Fade the button back in once the animation is complete
            UIView.animate(withDuration: 0.2) {
                sender.alpha = 1.0
            }
        }
        playSound(tone: (sender.currentTitle?.uppercased())!)
    }
    func playSound(tone: String) {
        print(tone)
        let url = Bundle.main.url(forResource: "Sounds/"+tone, withExtension: "wav")
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
            
        }catch let error{
            print(error.localizedDescription)
        }
        
        
    }
}

