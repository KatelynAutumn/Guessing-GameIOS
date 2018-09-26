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
    
    
    
    @IBAction func changeBlue(_ sender: Any) {
        UIView.appearance().backgroundColor = UIColor(hue: 0.4944, saturation: 0.31, brightness: 0.95, alpha: 1.0)
        UILabel.appearance().textColor = UIColor.black
        
    }
    
    @IBAction func changeRed(_ sender: Any) {
        UIView.appearance().backgroundColor = UIColor(hue: 0.8278, saturation: 0.22, brightness: 1, alpha: 1.0)
        UILabel.appearance().textColor = UIColor.black
    }
    
    @IBAction func changeGray(_ sender: Any) {
        UIView.appearance().backgroundColor = UIColor.gray
        UILabel.appearance().textColor = UIColor.black
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
