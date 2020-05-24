//
//  ViewController.swift
//  HW_2.1
//
//  Created by Mykhailo Romanovskyi on 22.05.2020.
//  Copyright © 2020 Mykhailo Romanovskyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.backgroundColor = .red
        red.layer.cornerRadius = 75
        red.alpha = 0.3
        yellow.backgroundColor = .yellow
        yellow.layer.cornerRadius = 75
        yellow.alpha = 0.3
        green.backgroundColor = .green
        green.layer.cornerRadius = 75
        green.alpha = 0.3
        button.setTitle("START", for: .normal)
    }
    
    @IBAction func buttonPressAction(_ sender: Any) {
        if button.titleLabel?.text == "START" {
            button.setTitle("NEXT", for: .normal)
            red.alpha = 1
            return
        }
        if red.alpha == 1 {
            red.alpha = 0.3
            yellow.alpha = 1
        } else if yellow.alpha == 1 {
            yellow.alpha = 0.3
            green.alpha = 1
        } else {
            green.alpha = 0.3
            red.alpha = 1
        }
    }
}

