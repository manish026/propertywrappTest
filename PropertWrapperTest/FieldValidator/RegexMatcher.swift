//
//  RegexMatcher.swift
//  test
//
//  Created by manish malviya on 30/06/19.
//  Copyright © 2019 Market Pulse. All rights reserved.
//

import Foundation

struct RegexMatcher {
    
    var stringToMatch: String?
    var regexString: String
    var isValid: Bool {
        return validate()
    }
    
    private func validate() -> Bool {
        guard let stringToMatch = stringToMatch else {
            return false
        }
        let test = NSPredicate(format:"SELF MATCHES %@", regexString)
        return test.evaluate(with: stringToMatch)
    }
}
