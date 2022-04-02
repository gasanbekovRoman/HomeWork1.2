//
//  ViewController.swift
//  HomeWork1.2
//
//  Created by Asya  on 30.03.2022.
//

import UIKit

enum CurrentCollor{
 case   red, yellow, green
}

class ViewController: UIViewController {
    

    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
    private var currentLight = CurrentCollor.red
    
    let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        startButton.setTitle("Start", for: .normal)
        
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        
    }
    
    
    @IBAction func showColorButton(_ sender: Any) {
        if startButton.currentTitle == "Start"{
            startButton.setTitle("NEXT", for: .normal)
        }
        
        
        switch currentLight {
        case .red:
            redView.alpha = 1
            greenView.alpha = lightIsOff
            currentLight = .yellow
            
        case .yellow:
            yellowView.alpha = 1
            redView.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenView.alpha = 1
            yellowView.alpha = lightIsOff
            currentLight = .red
        }
    }
}

