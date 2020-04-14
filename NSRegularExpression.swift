//
//  NSRegularExpression.swift
//  kifePool
//
//  Created by Ali Pishvaee on 4/7/20.
//  Copyright © 2020 iPersianDeveloper. All rights reserved.
//

import UIKit

extension NSRegularExpression {
    convenience init(_ pattern: String) {
        do {
            try self.init(pattern: pattern)
        } catch {
            preconditionFailure("Illegal regular expression: \(pattern).")
        }
    }
    
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
    
}
