//
//  Boat.swift
//  swift-boat
//
//  Created by Flatiron School on 7/11/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Boat {
    var name : String
    var sailors : [String]
    var maxSpeedKnots : Double
    var speedKnots : Double = 0
    
    init(name: String, sailors: [String], maxSpeedKnots: Double) {
        self.name = name
        self.sailors = sailors
        self.maxSpeedKnots = maxSpeedKnots
    }
    
    convenience init(name: String, maxSpeedKnots: Double) {
        self.init(name: name, sailors: [], maxSpeedKnots: maxSpeedKnots)
    }
    
    func sailorOverboard(name: String) {
        if let index = sailors.indexOf(name) {
            sailors.removeAtIndex(index)
            print("\(name) overboard!")
        } else {
            print("Sailor \(name) is not sailing on this boat!")
        }
    }
    
    func sinkThisShip() {
        speedKnots = 0
        for sailor in sailors {
            sailorOverboard(sailor)
        }
        print("Our crew is down to \(sailors.count) men, because this ship has been sunk!")
    }
    
    func rowTheBoat() {
        let startingSpeed = speedKnots
        
        for sailor in sailors {
            speedKnots += 1
            print("Row \(sailor), row!!")
        }
        
        if speedKnots > maxSpeedKnots {
            speedKnots = maxSpeedKnots
        }
    
        print("Thanks to these strapping young sailors, we increased our speed from \(startingSpeed) to \(speedKnots) knots!")
    }
    
}
