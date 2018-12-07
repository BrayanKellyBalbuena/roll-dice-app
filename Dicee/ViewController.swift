//
//  ViewController.swift
//  Dicee
//
//  Created by Brayan Kelly Balbuena on 11/18/18.
//  Copyright © 2018 Brayan Kelly Balbuena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var ramdomDiceIndex1: Int = 0
    var ramdomDiceIndex2: Int = 0
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
      updateDiceImages()
    }
    
    func updateDiceImages(){
        ramdomDiceIndex1 = Int.random(in: 0 ... 5)
        ramdomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceImages[ramdomDiceIndex1])
        diceImageView2.image = UIImage(named: diceImages[ramdomDiceIndex2])
    }
    
}

