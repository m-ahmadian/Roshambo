//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Mehrdad on 2020-10-20.
//  Copyright © 2020 Mehrdad. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var playerMove: Move.Gesture!
    var computerMove: Move.Gesture!
    
    // MARK: Outlets
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
            let string1 = Move.play(player: playerMove, computer: computerMove)
            let string2 = Move.result
        
            resultLabel.text = "\(string1). \(string2)"
            imageView1.image = UIImage(named: Move.imageName)
    }
    
    
    @IBAction func okPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
