//
//  SettingsViewController.swift
//  Guessing-Game
//
//  Created by Katelyn Pace on 9/25/18.
//  Copyright © 2018 Katelyn Pace. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let startBoard = ViewController()
    
    
    @IBOutlet weak var win: UILabel!
    
    
    @IBOutlet weak var lose: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        win.text = "Win: \(wins)"
        lose.text = "Lose: \(loses)"
        
    }
    
    @IBAction func resetScore(_ sender: Any) {
        wins = 0
        loses = 0
        win.text = "Win: \(wins)"
        lose.text = "Lose: \(loses)"
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
