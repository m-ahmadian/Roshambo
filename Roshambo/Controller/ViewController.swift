//
//  ViewController.swift
//  Roshambo
//
//  Created by Mehrdad on 8/21/18.
//  Copyright © 2018 Mehrdad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func rockPlayed(_ sender: Any) {
        let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultVC.playerMove = Move.Gesture.Rock
        resultVC.computerMove = Move.Gesture.allCases.randomElement()
        self.present(resultVC, animated: true, completion: nil)
    }
    

    
    @IBAction func paperPlayed(_ sender: Any) {
        performSegue(withIdentifier: "paper", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "paper" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.playerMove = Move.Gesture.Paper
            resultVC.computerMove = Move.Gesture.allCases.randomElement()
        }
        else if segue.identifier == "scissors" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.playerMove = Move.Gesture.Scissors
            resultVC.computerMove = Move.Gesture.allCases.randomElement()
        }
    }
}

