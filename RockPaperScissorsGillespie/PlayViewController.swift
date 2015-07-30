//
//  PlayViewController.swift
//  RockPaperScissorsGillespie
//
//  Created by Travis Gillespie on 7/27/15.
//  Copyright (c) 2015 Travis Gillespie. All rights reserved.
//

import UIKit
import Foundation

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func opponentRandomChoice() -> Int {
        let randomValue = 1 + arc4random() % 3
        return Int(randomValue)
    }
    
//ROCK: code programmatically
    @IBAction func rock(sender: UIButton) {
        var controller:ResultsViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        controller.yourValue = 1
        controller.opponentValue = self.opponentRandomChoice()
        
        println("rock")
        self.presentViewController(controller, animated: true, completion: nil)

    }
    
//PAPER: code & segue
    @IBAction func paper(sender: UIButton) {
        //performSegueWithIdentifier("paperRound", sender: self)
        
        var controller:ResultsViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        controller.yourValue = 2
        controller.opponentValue = self.opponentRandomChoice()
        
        //performSegueWithIdentifier("paperRound", sender: self)
       
        println("paper")
        println("PlayViewController yourValue: \(controller.yourValue)")
        println("PlayViewController yourValue: \(controller.opponentValue)")
        
        performSegueWithIdentifier("paperRound", sender: self)
    }

    
//SCISSORS: segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "scissorsRound"{
            let controller = segue.destinationViewController as! ResultsViewController
            controller.yourValue = 3
            controller.opponentValue = self.opponentRandomChoice()
            println("scissors")
        }
        
    }


}

