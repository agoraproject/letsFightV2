//
//  game.swift
//  letsFightV2
//
//  Created by Haulin Jean-Philippe on 16/07/2019.
//  Copyright © 2019 Concreteflowers. All rights reserved.
//

class Game {
    
    var player1: Player
    var player2: Player
    
    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }
    
    func play(player: Player) {
        var playingCharacters: [Character]
        var playingCharacter: Character
        var playingAgainstCharacters: [Character]
        var playingAgainstCharacter: Character
        
        //Select a character to fight with
        print("\n______________________\n")
        print("\(player1.name), choose the character you want to use to fight\n______________________\n")
        playingCharacters = player1.selectAliveCharacters(warrior: false)
        playingCharacter = selectCharacterToFight(playingCharacters: playingCharacters)
        
        var attack = false
        //if the player choose to fight,
        if(playingCharacter.weapon.damages > 1 ) {
            print("______________________\n\nChoose who's character you want to fight with\n\n______________________\n\n")
            playingAgainstCharacters = player2.selectAliveCharacters(warrior: false)
            attack = true
            //if the player choose to treat select a character to treat
        } else {
            print("______________________\n\nChoose who's character you want to treat \n\n")
            print("______________________\n\n")
            playingAgainstCharacters = player1.selectAliveCharacters(warrior: true)
        }
        
        playingAgainstCharacter = selectCharacterToFight(playingCharacters: playingAgainstCharacters)
        //print("\(playingAgainstCharacter.description())\n")
        
        //les 2 s'affrontent
        playingCharacter.play(character: playingAgainstCharacter, attack: attack)
    }
    
    func playAgain (player: Player) -> Bool {
        let charactersLeft = player.selectAliveCharacters(warrior: true)
        
        if charactersLeft.isEmpty {
            
            return false
        }
        
        return true
    }
    
}











