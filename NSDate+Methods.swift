//
//  NSDate+Methods.swift
//  Serv2Day
//
//  Created by Navarjun on 5/27/15.
//  Copyright (c) 2015 ClickLabs. All rights reserved.
//

import Foundation

extension NSDate {
    
    func isLaterThan(date: NSDate) -> Bool {
        if compare(date) == .OrderedDescending {
            return true
        }
        return false
    }
    
    func isEqualTo(date: NSDate) -> Bool {
        if compare(date) == .OrderedSame {
            return true
        }
        return false
    }
    
    func isEarlierThan(date: NSDate) -> Bool {
        if compare(date) == .OrderedAscending {
            return true
        }
        return false
    }
}