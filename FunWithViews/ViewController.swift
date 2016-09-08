//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var roll1: UILabel!
    
    @IBOutlet weak var roll2: UILabel!
    
    @IBOutlet weak var roll3: UILabel!
    
    @IBOutlet weak var roll4: UILabel!
    
    @IBOutlet weak var roll5: UILabel!
    
    @IBOutlet weak var roll6: UILabel!
    
    @IBOutlet weak var box1: UIView!
    
    @IBOutlet weak var box2: UIView!
    
    @IBOutlet weak var box3: UIView!
    
    @IBOutlet weak var box4: UIView!
    
    @IBOutlet weak var box5: UIView!
    
    @IBOutlet weak var box6: UIView!
    
    func clearTheLabels(){
        roll1.hidden = true
        roll2.hidden = true
        roll3.hidden = true
        roll4.hidden = true
        roll5.hidden = true
        roll6.hidden = true
    }
    func clearTheBoxes(){
        box1.hidden = true
        box2.hidden = true
        box3.hidden = true
        box4.hidden = true
        box5.hidden = true
        box6.hidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearTheLabels()
        clearTheBoxes()
        
    }
    var count = 0
    @IBAction func dice(sender: AnyObject) {
         count += 1
        if count <= 6 {
           let score = randomDiceRoll()
                updateScore(score, count : count)
                rerangDie(score)

        } else{
            clearTheLabels()
            clearTheBoxes()
            count = 0
            count += 1
            if count <= 6 {
                let score = randomDiceRoll()
                updateScore(score, count : count)
                rerangDie(score)
            }
        }
        
        }
        
    
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func rerangDie(diceScore : Int){
        switch (diceScore){
        case 1 :
            clearTheBoxes()
            box1.hidden = false
        case 2 :
            clearTheBoxes()
            box1.hidden = false
            box2.hidden = false
        case 3 :
            clearTheBoxes()
            box1.hidden = false
            box2.hidden = false
            box3.hidden = false
        case 4 :
            clearTheBoxes()
            box1.hidden = false
            box2.hidden = false
            box3.hidden = false
            box4.hidden = false
        case 5 :
            clearTheBoxes()
            box1.hidden = false
            box2.hidden = false
            box3.hidden = false
            box4.hidden = false
            box5.hidden = false
        case 6 :
            clearTheBoxes()
            box1.hidden = false
            box2.hidden = false
            box3.hidden = false
            box4.hidden = false
            box5.hidden = false
            box6.hidden = false
        default :
            break
        }
    }
    
    func updateScore( diceScore : Int, count : Int){
        let score = String(diceScore)
        switch(count) {
        case 1:
            roll1.hidden = false
            roll1.text = score
        case 2:
            roll2.hidden = false
            roll2.text = score
        case 3:
            roll3.hidden = false
            roll3.text = score
        case 4:
            roll4.hidden = false
            roll4.text = score
        case 5:
            roll5.hidden = false
            roll5.text = score
        case 6:
            roll6.hidden = false
            roll6.text = score
        default :
            break
        }
    }
}
