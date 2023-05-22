//
//  ViewController.swift
//  HW_2.02
//
//  Created by Бийбол Зулпукаров on 21/5/23.
//

import UIKit

enum LightOfTraffic {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var lightOfTraffic = LightOfTraffic.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch lightOfTraffic {
        case .red:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            lightOfTraffic = .yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            lightOfTraffic = .green
        case .green:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            lightOfTraffic = .red
        }
    }
}

