//
//  ViewController.swift
//  Throw The Dice
//
//  Created by TrendPower on 2023/8/8.
//

import UIKit

class ViewController: UIViewController {
    //IBoutlet allows me to reference a UI element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceArray = [UIImage(named: "DiceOne"),
                            UIImage(named: "DiceTwo"),
                            UIImage(named: "DiceThree"),
                            UIImage(named: "DiceFour"),
                            UIImage(named: "DiceFive"),
                            UIImage(named: "DiceSix")]
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("button")
        
        diceImageViewOne.image = diceArray.randomElement()!
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //WHO           WHAT    VALUE
        diceImageViewOne.image = UIImage(named: "DiceOne")
        diceImageViewTwo.image = UIImage(named: "DiceOne")
        //diceImageViewOne.alpha = 0.5 // image opacity
    }


}

