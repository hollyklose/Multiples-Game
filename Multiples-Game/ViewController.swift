//
//  ViewController.swift
//  Multiples-Game
//
//  Created by Holly Klose on 2/1/16.
//  Copyright © 2016 Holly Klose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var whichMultiple = 0
    var numberAddClicks = 0
    
    var secondPartOfEquation = 0
    
    var answerEquation = 0
    
    
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var whichMultipleTextbox: UITextField!
    

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var addingLabel: UILabel!
    
    
    @IBAction func onPlayButtonPressed (sender: UIButton!) {
        if  whichMultipleTextbox.text != "" {
            whichMultiple = Int(whichMultipleTextbox.text!)!
            
            logo.hidden = true
            whichMultipleTextbox.hidden = true
            playButton.hidden = true
            addButton.hidden = false
            addingLabel.hidden = false
            
        }
    }
 
    @IBAction func onAddButtonPressed (sender: UIButton!) {
        numberAddClicks++
        
        if numberAddClicks <= 7 {
        secondPartOfEquation = whichMultiple * numberAddClicks
        answerEquation = whichMultiple + secondPartOfEquation
        addingLabel.text = "\(whichMultiple) + \(secondPartOfEquation) = \(answerEquation)"
        }
        
        else {
            restartGame ()
        }
    }
    
    
    func restartGame () {
        
            logo.hidden = false
            whichMultipleTextbox.hidden = false
            playButton.hidden = false
            addButton.hidden = true
            addingLabel.hidden = true
            
            whichMultiple = 0
            numberAddClicks = 0
            secondPartOfEquation = 0
            answerEquation = 0
            whichMultipleTextbox.text = ""
           addingLabel.text = "Press Add to Add!"
    
    }
    


}

