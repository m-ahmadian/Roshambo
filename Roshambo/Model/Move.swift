//
//  Move.swift
//  Click Counter 1
//
//  Created by Mehrdad on 2020-10-21.
//  Copyright © 2020 Mehrdad. All rights reserved.
//

import UIKit

class Move: NSObject {
    
    static var result = String()
    static var imageName = String()
    
    enum ImageName: String {
        case rockVsPaper = "PaperCoversRock"
        case rockVsScissors = "RockCrushesScissors"
        case paperVsScissors = "ScissorsCutPaper"
        case tie = "itsATie"
    }
    
    enum Message: String {
        case win = "You win!"
        case lose = "You lose!"
        case draw = "It's a Tie!"
    }
    
    enum Condition: String {
        case rockVsPaper = "Paper Covers Rock"
        case rockVsScissors = "Rock Crushes Scissors"
        case paperVsScissors = "Scissors Cut Paper"
        case tie = "Draw"
    }
    
    enum Gesture: CaseIterable {
        case Rock
        case Paper
        case Scissors
    }
    
    
    static func play(player: Move.Gesture, computer: Move.Gesture) -> String {
        switch (player, computer) {
        case (Gesture.Rock, Gesture.Rock):
            result = Message.draw.rawValue
            imageName = ImageName.tie.rawValue
            return Condition.tie.rawValue
        case (Gesture.Rock, Gesture.Paper):
            result = Message.lose.rawValue
            imageName = ImageName.rockVsPaper.rawValue
            return Condition.rockVsPaper.rawValue
        case (Gesture.Rock, Gesture.Scissors):
            result = Message.win.rawValue
            imageName = ImageName.rockVsScissors.rawValue
            return Condition.rockVsScissors.rawValue
            
        case (Gesture.Paper, Gesture.Rock):
            result = Message.win.rawValue
            imageName = ImageName.rockVsPaper.rawValue
            return Condition.rockVsPaper.rawValue
        case (Gesture.Paper, Gesture.Paper):
            result = Message.draw.rawValue
            imageName = ImageName.tie.rawValue
            return Condition.tie.rawValue
        case (Gesture.Paper, Gesture.Scissors):
            result = Message.lose.rawValue
            imageName = ImageName.paperVsScissors.rawValue
            return Condition.paperVsScissors.rawValue
            
        case (Gesture.Scissors, Gesture.Rock):
            result = Message.lose.rawValue
            imageName = ImageName.rockVsScissors.rawValue
            return Condition.rockVsScissors.rawValue
        case (Gesture.Scissors, Gesture.Paper):
            result = Message.win.rawValue
            imageName = ImageName.paperVsScissors.rawValue
            return Condition.paperVsScissors.rawValue
        case (Gesture.Scissors, Gesture.Scissors):
            result = Message.draw.rawValue
            imageName = ImageName.tie.rawValue
            return Condition.tie.rawValue
//        default:
//            "Invalid Selection"
        }
    }
    
//    func result(player: Dice.Gesture, computer: Dice.Gesture) -> String {
//        switch (player, computer) {
//        case (Gesture.Rock, Gesture.Rock):
//            return "It's a Tie!"
//        case (Gesture.Rock, Gesture.Paper):
//            return "You lose!"
//        case (Gesture.Rock, Gesture.Scissors):
//            return "You win!"
//            
//        case (Gesture.Paper, Gesture.Rock):
//            return "You win!"
//        case (Gesture.Paper, Gesture.Paper):
//            return "It's a Tie!"
//        case (Gesture.Paper, Gesture.Scissors):
//            return "You lose!"
//            
//        case (Gesture.Scissors, Gesture.Rock):
//            return "You lose!"
//        case (Gesture.Scissors, Gesture.Paper):
//            return "You win!"
//        case (Gesture.Scissors, Gesture.Scissors):
//            return "Tie"
//            //        default:
//            //            "Invalid Selection"
//        }
//    }

}
