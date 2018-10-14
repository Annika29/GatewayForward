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
    override func viewDidLoad() {
        super.viewDidLoad()
        search.delegate = self
        img.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        img.isHidden = false
    }

}
