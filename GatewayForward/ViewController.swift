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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //let ref = Database.database().reference()
        
        //ref.child("Users/Username1/name").setValue("Mike")
        
        //ref.childByAutoId().setValue(["name":"Tom", "role":"Admin", "age":30])
        
        /*
        ref.child("someid/name").observeSingleEvent(of: .value)
            { (snapshot) in
            let employeedata = snapshot.value as?
                [String:Any]
        }
        */
        
       // let updates = ["someid/name":"John", "-LOifgkhCcTDR7wROmGq/name":"David"]
        //ref.updateChildValues(updates)
        
        //ref.child("someid").removeValue()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func logInBtn(_ sender: Any) {
        
    }
    
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Segueingg")
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
    
}

