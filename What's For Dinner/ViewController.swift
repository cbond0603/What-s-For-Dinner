//
//  ViewController.swift
//  What's For Dinner
//
//  Created by Chris Bond on 2/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dinnerImageView: UIImageView!
    @IBOutlet weak var dinnerButton: UIButton!
    @IBOutlet weak var dinnerLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dinnerLabel.text = ""
        dinnerImageView.image = UIImage(named: "")

        
    }
    
    @IBAction func dinnerButtonPressed(_ sender: UIButton) {
        let choicesArray = ["Burgers", "Burritos", "Cobb Salad", "Pepperoni Pizza", "Sushi"]
        var mealChoice: String
        
        repeat{
            mealChoice = choicesArray.randomElement()!
        } while mealChoice == dinnerLabel.text
                    dinnerLabel.text = mealChoice
        dinnerImageView.image = UIImage(named: mealChoice)
        
    }
    

}

