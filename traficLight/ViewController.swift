//
//  ViewController.swift
//  traficLight
//
//  Created by Ульяна Сексишмекси on 26.01.2020.
//  Copyright © 2020 Ульяна Сексишмекси. All rights reserved.
//

import UIKit
enum Colors {
    case yellow
    case green
    case red
}
class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startVar: UIButton!
    var signal = Colors.red


    override func viewDidLoad() {
        super.viewDidLoad()
    redLight.layer.cornerRadius = 70
    yellowLight.layer.cornerRadius = 70
    greenLight.layer.cornerRadius = 70
        startVar.layer.cornerRadius = 15
    redLight.alpha = 0.3
    yellowLight.alpha = 0.3
    greenLight.alpha = 0.3
        
    }
    @IBAction func StartPressed() {
       startVar.setTitle("NEXT", for: .normal)
        switch signal {
        case .red:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            signal = Colors.yellow
        case .yellow:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            signal = Colors.green
        case .green:
            self.greenLight.alpha = 1
            yellowLight.alpha = 0.3
            signal = Colors.red
            
//
//      default:
//            print("Don`t work")
        }
   
}
}
