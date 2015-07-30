//
//  ResultsViewController.swift
//  RockPaperScissorsGillespie
//
//  Created by Travis Gillespie on 7/27/15.
//  Copyright (c) 2015 Travis Gillespie. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var opponentValue : Int!
    var yourValue : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("ResultsViewController yourValue: \(yourValue)")
        println("ResultsViewController opponentValue: \(opponentValue)")
        
//        displayResult()

        }
    
    private func displayResult(){
        var imageName: String
        var text: String

        if yourValue == opponentValue {
            // Update the UI components
            resultImage.image = UIImage (named: "itsATie")
            resultLabel.text = "yourValue \(yourValue) vs opponentValue \(opponentValue): it's a tie!"
        }
        
    }

    
    @IBAction func playAgain(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}


/*
rock beats scissors
scissors beat paper
paper beats rock
tie values */