//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var positionStory = 0
    
    let stories = [
        Story(title: "You see a fork.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(positionStory)

    }
    @IBAction func choiceMade(_ sender: UIButton) {
        let buttonTitle = sender.titleLabel!
        
        if buttonTitle.text == stories[0].choice1 {
            positionStory = 1
            updateUI(positionStory)
        } else {
            positionStory = 2
            updateUI(positionStory)
        }
        
    }
    
    func updateUI(_ storyNumber: Int) {
        storyLabel.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }
    

}

