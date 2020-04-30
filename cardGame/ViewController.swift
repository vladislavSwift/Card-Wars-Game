//
//  ViewController.swift
//  cardGame
//
//  Created by macOS on 10/04/20.
//  Copyright © 2020 macOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomise numbers
        
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
        // update the image view
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        
        //if statement for comparing the random numbers 
        
        if leftNumber > rightNumber
        {
            //Left wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        
        else if leftNumber < rightNumber
        {
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            //right wins
        }
        
        else
        {
            // tie
        }
        
        
        
        
        //print("Deal Tapped!")
        
        
        
        
        
        
        
    }
    
    

}

