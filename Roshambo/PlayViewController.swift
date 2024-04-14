//
//  ViewController.swift
//  Roshambo
//
//  Created by MadhuBabu Adiki on 4/10/24.
//

import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playRoshambo(_ sender: UIButton) {
        
        var controller: ResultsViewController
        
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
        controller.playerSelection = sender.tag
        
        self.present(controller, animated: true, completion: nil)
        
    }
    
}

