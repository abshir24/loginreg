//
//  User.swift
//  loginreg
//
//  Created by Abshir Mohamed on 7/31/19.
//  Copyright © 2019 Abshir Mohamed. All rights reserved.
//

import UIKit

class User{
    
    var likes:[Int]!
    
    var shares:[Int]!
    
    var followers:[Int]!
    
    var interests:[String]!
    
    var username:String!
    
    var email: String!
    
    var password: String!
    
    var UserId: Int!
    
    init(_ user:String,_ mail:String,_ pass: String){
        
        likes = []
        
        shares = []
        
        followers = []
        
        interests = []
        
        username = user
        
        email = mail
        
        password = pass
    }
}
