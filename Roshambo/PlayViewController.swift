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
    
    @IBAction func playRock(_ sender: UIButton) {
        var controller: ResultsViewController
        
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
        controller.playerSelection = sender.tag
        
        self.present(controller, animated: true, completion: nil)
        
    }
    
    @IBAction func playPaper() {
        
        self.performSegue(withIdentifier: "playPaperSegue", sender: self)
    }
    
    @IBAction func playScissor() {
        self.performSegue(withIdentifier: "playScissorSegue", sender: self)
    }
//    @IBAction func playScissor() {
//
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playPaperSegue" {
            
            let controller = segue.destination as!  ResultsViewController
            
            controller.playerSelection = 1
//            print(sender)
        }
        else if segue.identifier == "playScissorSegue" {
            let controller = segue.destination as!  ResultsViewController
            
            controller.playerSelection = 2
//            print(sender)
        }
    }
    
}

