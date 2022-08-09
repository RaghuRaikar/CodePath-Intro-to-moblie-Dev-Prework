//
//  ViewController.swift
//  Prework
//
//  Created by Raghavendra Raikar on 8/3/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var colors = [UIColor.red, UIColor.green, UIColor.orange, UIColor.yellow, UIColor.brown, UIColor.purple, UIColor.darkGray]
    var color_counter = 0
    var color : String!
    @IBOutlet weak var TextLabel: UILabel!
    @IBAction func ButtonClicked(_ sender: Any) {
        print("Hello")
        TextLabel.textAlignment = .center
        TextLabel.textColor = colors[color_counter]
        if color_counter == 6
        {
            color_counter = 0
        }
        color_counter+=1
    }
    
    @IBAction func BButtonClicked(_ sender: Any) {
        view.backgroundColor = colors[color_counter]
        if color_counter == 6
        {
            color_counter = 0
        }
        color_counter+=1
        
    }
    
    
    @IBAction func Tap(_ sender: Any) {
        TextLabel.text = "Hello World";
        TextLabel.textColor = UIColor.green
        view.backgroundColor = UIColor.systemTeal
        
    }
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func TButtonClicked(_ sender: Any) {
        if (TextField.text?.isEmpty)!
        {
            TextLabel.text = "Goodbye 👋🏽";
        }
        else{
            TextLabel.text = TextField.text
        }
        
        
    }
}

