//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Create your methods here

    
    
    //1
    
    func addNameToDeliLine(name:String) -> String {
        let x = name
        let y = deliLine.count + 1
        
        switch x {
            
        case "Billy Crystal":
            deliLine.append(x)
            return ("Welcome Billy! You can sit wherever you like.")
        case "Meg Ryan":
            deliLine.append(x)
            return ("Welcome Meg! You can sit wherever you like.")
        default:
            deliLine.append(x)
            if deliLine.count == 1 {
                return ("Welcome \(x), you're first in line!")
            } else {
                return ("Welcome \(x), you're number \(y) in line.")
            }
        }
        return ""
    }
    
//    addNameToDeliLine("Jon Snow")

    
    
    
    //2
    
    
    func nowServing() -> String {
        
        if deliLine.count != 0 {
            let newPerson = deliLine[0]
            deliLine.removeFirst();
            return ("Now serving \(newPerson)!")
        } else {
            return ("There is no one to be served.")
        }
       return ""
    }
    
//    print(nowServing())
    
    
    
    
    //3
    
    
    func deliLineDescription() -> String {
        var sentence: String = "The line is:"
        let newDeliLine: [String] = deliLine
        
        
        if newDeliLine.isEmpty {
            sentence = ("The line is currently empty.")
        }
        for (index, person) in deliLine.enumerate() {
            sentence += "\n\(index + 1)" + "." + " \(person)"
        }
        return sentence
    }
    
//    print(deliLineDescription())
    
  
    
    

    
    
    
}
