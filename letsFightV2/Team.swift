//
//  Team.swift
//  letsFightV2
//
//  Created by Haulin Jean-Philippe on 16/07/2019.
//  Copyright © 2019 Concreteflowers. All rights reserved.
//


class Team {
    
    var characters: [Character]
    //var livingCharacters: [Character]
    
    
    init(characters: [Character]) {
        self.characters = characters
    }
    
    init() {
        self.characters = buildTeam()
    }

}



func buildTeam()-> [Character] {
    //Player 1 characters
    var character: Character
    var typedCharacter: Int
    var characterName: String = ""
    var characters = [Character]()
    for c in 1...3 {
        repeat {
            print("Choose a type for character \(c)/3 :")
            print("1. Fighter")
            print("2. Wizard")
            print("3. Giant")
            print("4. Dwarf")
            print("Type the corresponding number")
            typedCharacter = inputInt(messageErreur: "")
        } while typedCharacter != 1 && typedCharacter != 2 && typedCharacter != 3 && typedCharacter != 4
        
        
        //accède au rang de l'enum à partir
        if let typeOfCharacter = TypeCharacter(rawValue: typedCharacter) {
            print("Type a nickname for your \(typeOfCharacter)")
            characterName = inputStr(messageErreur:"Saisir un nom pour votre personnage\(String(describing: TypeCharacter(rawValue: typedCharacter)))")
            character = Character(name: characterName, typeCharacter: typeOfCharacter)
            characters.append(character)
            
        }
    }
    return characters
}





