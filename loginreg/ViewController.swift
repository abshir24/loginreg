//
//  ViewController.swift
//  loginreg
//
//  Created by Abshir Mohamed on 7/31/19.
//  Copyright © 2019 Abshir Mohamed. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    
    var allUsers:[User]!
    
    var length:Int = 3

    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ref = Database.database().reference()
        
        
        
        
    }
    
    func populateUsersArray()
    {
        //retrieve data from db and store in image objects array
        for i in 1...length{
            let ref = Database.database().reference()
            
            ref.child(String(i)).observeSingleEvent(of: .value, with: { (snapshot) in
                // Get user value
                let value = snapshot.value as? NSDictionary
                let username = value?["username"] as? String ?? ""
                let email = value?["email"] as? String ?? ""
                let password = value?["password"] as? String ?? ""
                
                let referenceID = i
                
                self.addToUsers(User.init(username,email,password))
                
            }) { (error) in
                print(error.localizedDescription)
            }
        }
    }
    
    //Adds images to the the user object array
    func addToUsers(_ user:User)
    {
        self.allUsers.append(user)
    }
    
    @IBAction func Login(_ sender: Any) {
        
    }
    
    
    @IBAction func Register(_ sender: Any) {
        
    }


}

