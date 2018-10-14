//
//  SignUp.swift
//  GatewayForward
//
//  Created by Annika Marthaler on 10/13/18.
//  Copyright © 2018 Pyi Theim Kyaw. All rights reserved.
//

import UIKit
import Firebase

class SignUp: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var nationality: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var nameEdit: UILabel!
    @IBOutlet weak var nationalityEdit: UILabel!
    
    @IBOutlet weak var retypeYourPassword: UITextField!
    
    var ref:DatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ref = Database.database().reference()
        
        
    }
    
    @IBAction func loginBt(_ sender: Any) {
        self.performSegue(withIdentifier: "loginVC", sender: nil)
    }
    @IBAction func signUp(_ sender: Any) {
        
        //Checking user input errors
        
        let myUserName = userName.text!
        let userEmail = email.text!
        let userNationality = nationality.text!
        let userPassword = password.text!
        let retypePassword = retypeYourPassword.text!
        
        //Checking for empty fields
        if(myUserName.isEmpty || userPassword.isEmpty || userEmail.isEmpty || retypePassword.isEmpty) {
            displayMyAlertMessage(userMessage: "All fields are required.")
            
            return;
        }
        
        //Check if passwords match
        if(userPassword != retypePassword)
        {
            // Display an alert message
            displayMyAlertMessage(userMessage: "Passwords do not match")
            return;
        }
        
        let post = [
                    "email": email.text,
                    "nationality": nationality.text,
                    "password": password.text]
        
       
        let childUpdates = ["/user-posts/\(myUserName)/": post]
        ref?.updateChildValues(childUpdates)
        
        // writing data to the database
        //ref?.child("users").child(userName.text ?? "nope").setValue([email.text])
        
        self.performSegue(withIdentifier: "loginVC", sender: nil)
    }
    
    
    func displayMyAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertAction.Style.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    

    }



