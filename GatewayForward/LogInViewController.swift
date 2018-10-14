 //
//  LogInViewController.swift
//  GatewayForward
//
//  Created by Pyi Theim Kyaw on 10/13/18.
//  Copyright © 2018 Pyi Theim Kyaw. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view did load from Log In View Controller")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
 

    
    
    @IBAction func loginB(_ sender: Any) {
    let myUserName = userName.text!
    let myPassword = pass.text!
        
    //if((myUserName == "minh") && (myPassword == "a"))
    //{
    self.performSegue(withIdentifier: "tabVC", sender: nil)
        
    //}
     
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("in segue")
//
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    


