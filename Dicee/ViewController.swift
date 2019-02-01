//
//  ViewController.swift
//  Dicee
//
//  Created by Roberto Hernandez on 1/31/19.
//  Copyright © 2019 Roberto Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    
    @IBOutlet weak var diceImageViewer1: UIImageView!
    @IBOutlet weak var diceImageViewer2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
    
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        print("r1: ", randomDiceIndex1)
        print("r2: ", randomDiceIndex2)
        
        diceImageViewer1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageViewer2.image = UIImage(named: diceArray[randomDiceIndex2])

    }
    
}

