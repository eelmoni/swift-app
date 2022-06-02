//
//  Game.swift
//  SwiftApp
//
//  Created by Distillery on 02/06/2022.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        // Solution 1
//        var difference: Int;
//
//        if self.target < sliderValue {
//            difference = sliderValue - self.target
//        } else if self.target > sliderValue {
//            difference = self.target - sliderValue
//        } else {
//            difference = 0
//        }
//
//        let awardedPoints: Int = 100 - difference
//
//        return awardedPoints
        
        // Solution 2
//        var difference: Int = self.target - sliderValue
//
//        if difference < 0 {
//            difference = difference * -1
//            // difference *= -1
//            // difference = -difference
//        }
//        let awardedPoints: Int = 100 - difference
//
//        return awardedPoints
        
        
        // Solution 3
//        let difference = target - sliderValue
//        let awardedPoints = 100 - abs(difference)
//
//        return awardedPoints
        
        // Solution 4
        100 - abs(target - sliderValue)
    }
}
