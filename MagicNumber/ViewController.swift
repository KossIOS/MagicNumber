//
//  ViewController.swift
//  MagicNumber
//
//  Created by Konstantyn Koroban on 11/09/2021.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var countScreenLabel: UILabel!
    @IBOutlet weak var countTextLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var screenNumber = 0
    var randomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomNumberInFirstScreen(screenNumber: screenNumber)
        addRandomNumber()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let  viewController = segue.destination as? ViewController  {
            viewController.screenNumber = screenNumber + 1
            viewController.randomNumber = randomNumber
        }
    }
    
    private func addRandomNumber() {
        switch screenNumber {
        case 0:
            countScreenLabel.text = "First"
            countTextLabel.text = "You have to guess a number from 1 to 100"
            title = countScreenLabel.text
        case 1:
            countScreenLabel.text = "Second"
            countTextLabel.text = "We will know this number soon"
            title = countScreenLabel.text
        case 2:
            countScreenLabel.text = "Third"
            countTextLabel.text = "It's too early to know about him"
            title = countScreenLabel.text
        case 3:
            countScreenLabel.text = "Fourth"
            countTextLabel.text = "Get ready"
            title = countScreenLabel.text
        case 4:
            countScreenLabel.text = "Fifth"
            countTextLabel.text = "It was conceived \(randomNumber)"
            nextButton.isHidden = true
            title = countScreenLabel.text
        default:
            break
        }
    }
    
    func addRandomNumberInFirstScreen(screenNumber: Int) {
        if screenNumber == 0 {
            self.randomNumber = Int.random(in: 1...100)
        }
    }
}
