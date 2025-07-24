//
//  Player.swift
//  ScoreKeeper
//
//  Created by Scholar on 7/24/25.
//

import Foundation

struct Player: Identifiable {//identifiable protocol, reqs that the type has an id property
    //protocol: defines blueprint of methods, properties, & other reqs for a type
    var name: String
    var score: Int
    
    let id = UUID() //“universally unique identifier", each player has unique id (player's can have same name, diff id)
}
