//
//  GoodJokeViewController.swift
//  ikid
//
//  Created by Jessica  Wang on 4/27/25.
//

import UIKit

// Dad Joke
class DadJokeViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!

    var showingPunchline = false

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Dad Joke"  // navigationBar title
        jokeLabel.text = "What do you say to your sister when she's crying?"
    }

    @IBAction func toggleButtonTapped(_ sender: UIButton) {
        if showingPunchline {
            jokeLabel.text = "What do you say to your sister when she's crying?"
            toggleButton.setTitle("Next", for: .normal)
        } else {
            jokeLabel.text = "Are you having a crisis?"
            toggleButton.setTitle("Hide Punchline", for: .normal)
        }
        showingPunchline.toggle()
    }
}
