//
//  FalseDatas.swift
//  letsFightV2
//
//  Created by Haulin Jean-Philippe on 16/07/2019.
//  Copyright © 2019 Concreteflowers. All rights reserved.
//

class FalseDatas {
    
    let player1: Player
    let player2: Player
    
    init() {
        var player1Characters: [Character] = []
        player1Characters.append(Character(name: "Rambo", typeCharacter: .Fighter))
        player1Characters.append(Character(name: "Merlin", typeCharacter: .Wizard))
        player1Characters.append(Character(name: "Hulk", typeCharacter: .Giant))
        player1 = Player(playerName: "mathieu", characters: player1Characters)
        
        /*print("Player 1 name \(player1.name)")
         print ("and his characters are : ")
         for character in player1Characters {
         print("\(character.name) is a \(character.typeCharacter) and wear an \(character.weapon.name) and \(character.weapon.damages) of damages")
         }*/
        
        var player2Characters: [Character] = []
        player2Characters.append(Character(name: "Conan", typeCharacter: .Fighter))
        player2Characters.append(Character(name: "Passe partout", typeCharacter: .Dwarf))
        player2Characters.append(Character(name: "Harry", typeCharacter: .Wizard))
        player2 = Player(playerName: "looser", characters: player2Characters)
    
    }
}
