//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}




protocol ProvideAccess {
    
    func allowEntryWithPassword(password: [Int]) -> Bool
    
}




extension BankVault: ProvideAccess {
    
    func allowEntryWithPassword(password: [Int]) -> Bool {
        
        if password.isEmpty {
            return false
        }
        
        if password.count == 0 {
            return false
        }
        
        if password.count > 10 {
            return false
        }        
        
        
        
//        for index in 0..<password.count{
//            print("We have \(password[index]) left")
//            if ((password[index+2] % 2) == 0) && ((password[0] % 2) == 0) {
//                return true
//            }
//        }
        
        
        for (index, element) in password.enumerated() {
            
            if index % 2 == 0 && element % 2 == 0 {
                
                print("my element: \(element)")
                
//                if element % 2 == 0 {
//
//                    print("my even int: \(element)")
//                    
//                    return true
//                }
                return true
            }
            
        }
        
        
//        for (index, element) in password.enumerated() {
//            
//            if (index % 2 != 0) && (password[0] == 0) {
//                
//                if (element % 2 == 0) {
//                    
//                    return true
//                }
//            }
        
//            if ((password[index+2] % 2) == 0) && ((password[0] % 2) == 0) {
//                return true
//            }
           
        //}
        
        
        return false
    }
    
}



















