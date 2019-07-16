//
//  Weapon.swift
//  
//
//  Created by Haulin Jean-Philippe on 30/05/2019.
//

import Foundation

class Weapon {
    var name: String
    var damages: Int
    //var treat: Bool = false
    
    init(damages: Int, name: String ) {
        self.damages = damages
        self.name = name
    }
}
