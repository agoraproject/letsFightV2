
//
//  Main.swift
//
//
//  Created by Haulin Jean-Philippe on 30/05/2019.
//


import Foundation



// Fonction permettant de demander à l'utilisateur d'entrer un nombre entier
func inputInt(messageErreur: String) -> Int {
    while true {
        if let strData = readLine() { //approfondir cette expression
            let test = Int(strData)
            if test != nil {
                return test!
            } else {
                if(messageErreur == "") {
                    print("Type an integer")
                } else {
                    print(messageErreur)
                }
            }
        }
    }
}

func inputStr(messageErreur: String) -> String {
    while true {
        if let strData = readLine() {
            return strData
        } else {
            print(messageErreur)
        }
    }
}









func selectCharacterToFight(playingCharacters: [Character]) -> Character {
    
    //print("function selectCharacterToFight\n")
    //print(playingCharacters[0].name)
    //print("\n")
    var charactersChoices: [Int] = []
    var typedCharacter: Int
    //var selectedCharacter: Character
    //var index: Int
    repeat {
        var indexOfCharacter = 1
        for character in playingCharacters {
            print("\(indexOfCharacter). \(character.name)\n")
            charactersChoices.append(indexOfCharacter)
            indexOfCharacter += 1
        }
        typedCharacter = inputInt(messageErreur: "")
    } while !charactersChoices.contains(typedCharacter)
    
    
    let typedCharacterIndex: Int = typedCharacter-1
    
    print("\n______________________\n")
    print("Your choice is  \(playingCharacters[typedCharacterIndex].name)\n______________________\n")
    
    return playingCharacters[typedCharacterIndex]
    
    
}

/*____________________________
 ----------------------------
 initialisation du jeux
 ____________________________
 ----------------------------*/




/*____________________________
 ----------------------------
 choix mode complet ou debug
 ____________________________
 ----------------------------*/


var choixMode: Int
repeat {
    print("1 - MODE COMPLET\n")
    print("2 - MODE DEBUG\n")
    choixMode = inputInt(messageErreur:"Type 1 or 2")
} while choixMode != 1 && choixMode != 2



/*____________________________
 ----------------------------
 STEP 1 : SETUP A NEW GAME
 ____________________________
 ----------------------------*/

var player1: Player
var player2: Player
var falseDatas = FalseDatas()
//DATAS FOR TEST
if choixMode == 2 {
    player1 = falseDatas.player1
    player2 = falseDatas.player2

//DATAS for real Game
} else {
    
    /*____________________________
     Team 1 setup
     ----------------------------*/
    print("______________________\n\nTeam 1 setup :\n______________________\n")
    player1 = Player(firstPlayerName: "")
    
    /*____________________________
     Team 2 setup
     ----------------------------*/
    print("______________________\n\nTeam 2 setup :\n______________________\n")
    player2 = Player(firstPlayerName: player1.name)

}








/*____________________________
 ----------------------------
 STEP 2 : START THE GAME
 ____________________________
 ----------------------------*/

var playAgain = true
var game = Game(player1: player1, player2: player2)
repeat {
    //Player 1 turn
    game.play(player: player1)
    playAgain = game.playAgain(player: player2)
    if !playAgain {
        print ("Player 1 a gagné ")
    } else {
        //Player 2 turn
        game.play(player: player2)
        playAgain = game.playAgain(player: player1)
        if !playAgain {
            print ("Player 2 a gagné ")
        }
    }
    
    
} while playAgain



var restart: Int
repeat {
    print("\nDo you want to start another game?\n\n")
    print("1 - YES\n")
    print("2 - NO\n")
    restart = inputInt(messageErreur:"Type 1 or 2")
} while choixMode != 1 && choixMode != 2

/*if(restart == 1) {
    
    
}*/












