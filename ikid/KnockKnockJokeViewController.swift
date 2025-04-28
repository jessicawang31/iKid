//
//  KnockKnockJokeViewController.swift
//  ikid
//
//  Created by Jessica  Wang on 4/27/25.
//

import UIKit

// Knock Knock Joke
class KnockKnockJokeViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!

    let lines = [
        "Knock knock.",
        "Who's there?",
        "Monkey",
        "Monkey who?",
        "Monkey see. Monkey do."
    ]
    
    var currIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Knock Knock Joke"
        jokeLabel.text = lines[currIndex]
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if currIndex == lines.count - 1 {
            currIndex = 0
        } else {
            currIndex += 1
        }
        
        let displayedLines = lines[0...currIndex].joined(separator: "\n")
        jokeLabel.text = displayedLines
    }
}
