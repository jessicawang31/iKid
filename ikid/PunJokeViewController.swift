//
//  GoodJokeViewController.swift
//  ikid
//
//  Created by Jessica  Wang on 4/27/25.
//

import UIKit

// Pun Joke
class PunJokeViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!

    var showingPunchline = false

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pun Joke"  // navigationBar title
        jokeLabel.text = "What do you call a fake noodle?"
    }

    @IBAction func toggleButtonTapped(_ sender: UIButton) {
        if showingPunchline {
            jokeLabel.text = "What do you call a fake noodle?"
            toggleButton.setTitle("Next", for: .normal)
        } else {
            jokeLabel.text = "An impasta!"
            toggleButton.setTitle("Hide Punchline", for: .normal)
        }
        showingPunchline.toggle()
    }
}
