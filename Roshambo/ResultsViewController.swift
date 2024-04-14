//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by MadhuBabu Adiki on 4/10/24.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var playerSelection: Int?
    var computerSelection: Int?
    @IBOutlet weak var outcomeMessage: UILabel!
    
    func randomValue() -> Int {
        let randomValue = arc4random() % 3
        return Int(randomValue)
    }
    
    let elementsArray = ["Rock", "Paper", "Scissor"]
    
    func winner(player:Int, computer: Int) -> (UIImage, String) {
        
        let tuple = (player, computer)
        var image_name: UIImage
        var message: String
        
        
        switch tuple {
        case (0, 1):
            image_name = UIImage(named:"PaperCoversRock")!
            message = "Paper Covers Rock.Sorry you lost!"
//            return (, "Sorry you lost!")
        case (1, 0):
            image_name = UIImage(named:"PaperCoversRock")!
            message = "Paper Covers Rock.Awesome you won!"
//            return (UIImage(named:"PaperCoverRock"), )
        case (0, 2):
            image_name = UIImage(named:"RockCrushesScissors")!
            message = "Rock Crushes Scissors. Sorry you lost!"
        case (2, 0):
            image_name = UIImage(named:"RockCrushesScissors")!
            message = "Rock Crushes Scissors. Awesome you won!"
        case (1, 2):
            image_name = UIImage(named:"ScissorsCutPaper")!
            message = "Scissors Cut Paper. Sorry you lost!"
        case (2, 1):
            image_name = UIImage(named:"ScissorsCutPaper")!
            message = "Scissors Cut Paper. Awesome you won!"
        default:
            image_name = UIImage(named:"itsATie")!
            message = "Its a Tie!"
        }
        
        return (image_name, message)
        
    }
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let playerSelection = self.playerSelection {
                        
            self.computerSelection = randomValue()
            print(self.computerSelection!)
            print(playerSelection)
            let gameOutcome = winner(player: playerSelection, computer:self.computerSelection!)
            self.resultImage.image = gameOutcome.0
            self.outcomeMessage.text = "You selected \(elementsArray[playerSelection]),\n Computer selected \(elementsArray[self.computerSelection!])\n \(gameOutcome.1)"
        }
        else {
            self.resultImage.image = nil
        }
    }
    
    @IBAction func dismissView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
