//
//  ViewController.swift
//  wargamenew
//
//  Created by Evgenii Shiltsev on 4.2.2020.
//  Copyright © 2020 Evgenii Shiltsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftcardView: UIImageView!
    
    @IBOutlet weak var rightcardView: UIImageView!

    
    
    @IBOutlet weak var playerscoreView: UILabel!
    
    @IBOutlet weak var cpuScoreview: UILabel!
    
    var playerscore =  0
    
    var cpuScore = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
    
        let leftNumber = Int.random(in: 2...14)
        // print(leftNumber)
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
        
        leftcardView.image = UIImage(named: "card\(leftNumber)")
        rightcardView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            
          playerscore += 1
            playerscoreView.text = String(playerscore)
            
        }
        else if leftNumber < rightNumber {
            cpuScore += 1
            cpuScoreview.text = String(cpuScore)    
        }
        
        
        print("Deal Tapped!")
    }
    
}

