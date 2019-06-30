//
//  Email.swift
//  test
//
//  Created by manish malviya on 30/06/19.
//  Copyright © 2019 Market Pulse. All rights reserved.
//

import Foundation

@propertyWrapper
struct Email {
    
    var data: String?
    
    init(defaultValue: String?) {
        data = defaultValue
    }
    
    var value : String? {
        get {
            return data
        }
        set {
            if EmailValidator(email: newValue).isValid { data = newValue }
        }
    }
    
}
