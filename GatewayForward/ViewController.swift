//
//  ViewController.swift
//  GatewayForward
//
//  Created by Pyi Theim Kyaw on 10/13/18.
//  Copyright © 2018 Pyi Theim Kyaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logInBtnOutlet: UIButton!
    
    @IBOutlet weak var learnMore: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        logInBtnOutlet.layer.cornerRadius = 10
        signUpBtn.layer.cornerRadius = 10
        learnMore.layer.cornerRadius = 10
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}

