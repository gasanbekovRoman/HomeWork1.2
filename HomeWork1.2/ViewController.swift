//
//  ViewController.swift
//  HomeWork1.2
//
//  Created by Asya  on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
         startButton.layer.cornerRadius = 10
        
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
         
        
    
    }
    
    @IBAction func showColorButton(_ sender: Any) {
        
        if startButton.title == "START"{
            
        }
            
        
    }
}

