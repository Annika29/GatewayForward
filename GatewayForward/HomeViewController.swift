//
//  HomeViewController.swift
//  GatewayForward
//
//  Created by Annika Marthaler on 10/14/18.
//  Copyright © 2018 Pyi Theim Kyaw. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let image = ["raffi", "concert", "dinner", "bbq", "dance", "nation", "party", "wine", "nepali"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.myImage.image = UIImage(named: image[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        
        vc?.image = UIImage(named: image[indexPath.row])!
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

}
