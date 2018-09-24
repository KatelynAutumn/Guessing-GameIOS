//
//  ViewController.swift
//  Guessing-Game
//
//  Created by Katelyn Pace on 9/21/18.
//  Copyright © 2018 Katelyn Pace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var GuessStatement: UILabel!
    
    @IBOutlet weak var EnterNumber: UITextField!
    
    @IBOutlet weak var GuessEval: UILabel!
    
    @IBOutlet weak var SubmitButton: UIButton!
    
    @IBOutlet weak var AttemptLevel: UILabel!
    
    @IBOutlet weak var GameReset: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

