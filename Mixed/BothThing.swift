//
//  BothThing.swift
//  Pods
//
//  Created by Nick Snyder on 9/6/16.
//
//

import Foundation

public class BothThing: NSObject {

    public func hello() -> String {
        return ObjectiveCThing().hello() + SwiftThing().hello()
    }
}