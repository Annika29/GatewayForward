//
//  DetailViewController.swift
//  GatewayForward
//
//  Created by Annika Marthaler on 10/14/18.
//  Copyright © 2018 Pyi Theim Kyaw. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  
    
    @IBOutlet weak var img: UIImageView!
    
    
  
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = image
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    

}
