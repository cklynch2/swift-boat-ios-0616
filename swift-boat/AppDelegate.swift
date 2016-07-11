//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        var titanic = Boat(name: "Titanic", sailors: ["Leonardo DiCaprio", "Kate Winslet"], maxSpeedKnots: 8.0)
        titanic.sailors.append("Claire Katherine Lynch")
        
        titanic.rowTheBoat()
        
        titanic.sailorOverboard("Claire Katherine Lynch")
        titanic.sailorOverboard("Ian Rahman")
        
        titanic.sinkThisShip()
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////

