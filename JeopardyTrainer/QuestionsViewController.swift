//
//  QuestionsViewController.swift
//  JeopardyTrainer
//
//  Created by Nick Haidari on 12/15/19.
//  Copyright © 2019 Nick Haidari. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var showAnswerButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var getRightLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    
    
    var clue: Clue!
    var categoryTitle: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if clue == nil {
            questionsLabel.text = "ERROR"
        }
        
        if categoryTitle == nil {
            questionsLabel.text = "ERROR"
            
        }
        categoryLabel.text = "Category: \(categoryTitle!)"
        questionsLabel.text = clue.question
        answerLabel.text = clue.answer
        
 
    }
    
    @IBAction func showAnswerButtonPressed(_ sender: UIButton) {
        showAnswerButton.isHidden = true
        answerLabel.isHidden = false
        getRightLabel.isHidden = false
        yesButton.isHidden = false
        noButton.isHidden = false
    }
    
    @IBAction func yesButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func noButtonPressed(_ sender: UIButton) {
    }
}
