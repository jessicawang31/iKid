//
//  GoodJokeViewController.swift
//  ikid
//
//  Created by Jessica  Wang on 4/27/25.
//

import UIKit

// Good Joke
class GoodJokeViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!

    var showingPunchline = false

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Good Joke"  // navigationBar title
        jokeLabel.text = "Did you know my dad got fired as a road worker for theft?"
    }

    @IBAction func toggleButtonTapped(_ sender: UIButton) {
        if showingPunchline {
            jokeLabel.text = "Did you know my dad got fired as a road worker for theft?"
            toggleButton.setTitle("Next", for: .normal)
        } else {
            jokeLabel.text = "Couldn't believe it but when I got home, all the signs were there."
            toggleButton.setTitle("Hide Punchline", for: .normal)
        }
        showingPunchline.toggle()
    }
}
