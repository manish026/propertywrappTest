//
//  EmailValidator.swift
//  test
//
//  Created by manish malviya on 30/06/19.
//  Copyright © 2019 Market Pulse. All rights reserved.
//

import Foundation

struct EmailValidator {
    
    var email: String?
    var isValid: Bool {
        return RegexMatcher(stringToMatch: email, regexString: Regex.email.rawValue).isValid
    }
    
}
