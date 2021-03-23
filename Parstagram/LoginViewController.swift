//
//  LoginViewController.swift
//  Parstagram
//
//  Created by CSUDH on 3/23/21.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSignIn(_ sender: Any) {
        
        
        
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        
        let user = PFUser()
        user.username = userNameField.text
        user.password = userNameField.text
        
        user.signUpInBackground{ (success, error) in
            if error != nil
            {
                
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
                
            }
            else
            {
                
                print("Error: \(error?.localizedDescription)")
                
            }
        }
        
        
        
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
