//
//  player.swift
//  letsFight
//
//  Created by Haulin Jean-Philippe on 11/06/2019.
//  Copyright © 2019 Concreteflowers. All rights reserved.
//

/*
 le jeu est composé de 2 joueurs
 chaque joueur possède 3 personnages
 chaque personnage a des points de vie, un nom et une arme
 une arme possède un nombre de points qui détermine les dégats que va faire le personnage
 
 Un coffre peut apparaître au hasard devant un personnage quand celui ci joue son tour.
 Le joueur ne connais pas l'arme qu'il y a dans le coffre qui peut être plus ou moins puissante que celle qu'il possède actuellement.
 
 Il aura le choix de remplacer son arme par celle du coffre
 
 Tant que chaque personnage a encore des points, il est encore en vie
 Tant que tous les joueurs ont au moins 1 personnage en vie, la partie continue

 

*/



class Player {

    var name: String
    var team: Team
    
    init(firstPlayerName: String) {
        //Player 1 name
        //var playerName: String = ""
        if firstPlayerName != "" {
            repeat {
                print("Player 2, choose a Name different than the player 1 :\n")
                self.name = inputStr(messageErreur:"Type a name for the player")
            } while firstPlayerName == self.name
            //Player 2 name
        } else {
            print("Player 1, choose a Name :")
            self.name = inputStr(messageErreur:"Type a name for the player\n")
        }
        
        self.team = Team()
        
        
        
    }
    
    init(playerName: String, characters: [Character]){
        
        self.name = playerName
        self.team = Team(characters: characters)
        
    }

    func selectAliveCharacters(warrior: Bool) -> [Character] {
        
        //print("selectAliveCharacters function")
        var playingCharacters: [Character] = []
        for unCharacter in self.team.characters {
            /*print("name character\(unCharacter.name)")
             print("\n")
             print("life character\(unCharacter.life)")
             print("\n")*/
            if unCharacter.life > 0 {
                if(warrior) {
                    if unCharacter.weapon.damages>0 {
                        playingCharacters.append(unCharacter)
                    }
                } else {
                    playingCharacters.append(unCharacter)
                }
            }
        }
        
        return playingCharacters
        
    }
    
}
