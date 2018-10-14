//
//  SearchViewController.swift
//  GatewayForward
//
//  Created by Annika Marthaler on 10/14/18.
//  Copyright © 2018 Pyi Theim Kyaw. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {

    
    @IBOutlet weak var search: UISearchBar!
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        search.delegate = self
        img.isHidden = true
        img1.isHidden = true
        img2.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        img.isHidden = false
        img1.isHidden = false
        img2.isHidden = false
    }

}
