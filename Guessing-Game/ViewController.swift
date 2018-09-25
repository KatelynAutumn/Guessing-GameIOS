//
//  ViewController.swift
//  Guessing-Game
//
//  Created by Katelyn Pace on 9/21/18.
//  Copyright © 2018 Katelyn Pace. All rights reserved.
//

import UIKit


var wins = 0
var loses = 0


class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var GuessEval: UILabel!
    
    @IBOutlet weak var SubmitButton: UIButton!
    
    @IBOutlet weak var AttemptLevel: UILabel!
    
    @IBOutlet weak var userGuess: UISlider!
    
    @IBOutlet weak var GameReset: UIButton!
    
    @IBOutlet weak var guessHint: UILabel!
    
    
    var randomNumber = Int(arc4random_uniform(100) + 1)
    var numberOfTries = 5
    var guessedNumber: Int?
    
    override func viewDidLoad() {
        
        SubmitButton.setTitle("Submit", for: .normal)
        super.viewDidLoad()
    }
    
    
    
    @IBAction func sliderChanged(_ sender: Any) {
        GuessEval.text = "\(Int(userGuess.value))"
    }
    
    @IBAction func SubmitGuess(_ sender: Any) {
        
        
        if numberOfTries == 1 {
            guessHint.text = "You ran out of tries, the number was \(randomNumber)!"
            loses += 1
            SubmitButton.isEnabled = false
            AttemptLevel.text = "Attempts: 0"
        }
        else if Int(userGuess.value) == randomNumber {
            guessHint.text = "You won!"
            numberOfTries -= 1
            wins += 1
            AttemptLevel.text = "Attempts: 0"
            SubmitButton.isEnabled = false
        }
        else if Int(userGuess.value) < randomNumber {
            guessHint.text = "Your guess was to low!"
            numberOfTries -= 1
            AttemptLevel.text = "Attempts: \(numberOfTries)"
        }
        else if Int(userGuess.value) > randomNumber {
            guessHint.text = "Your guess was to high!"
            numberOfTries -= 1
            AttemptLevel.text = "Attempts: \(numberOfTries)"
        }
    }
    
    
    @IBAction func resetGame(_ sender: Any) {
        randomNumber = Int(arc4random_uniform(100) + 1)
        numberOfTries = 5
        AttemptLevel.text = "Attempts: \(numberOfTries)"
        SubmitButton.isEnabled = true
        guessHint.text = ""
        userGuess.value = 1
        GuessEval.text = "\(Int(userGuess.value))"
        
        
    }
    
    
    
}
