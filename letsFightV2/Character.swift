    //
    //  Character.swift
    //
    //
    //  Created by Haulin Jean-Philippe on 30/05/2019.
    //
    // chaque personnage possede un nom, une classe, une arme, et un nombre de points de vie
    

    
    import Foundation
    
    class Character {
        var name: String
        let typeCharacter: TypeCharacter
        var weapon: Weapon
        var life: Int
        
        
        init(name: String, typeCharacter: TypeCharacter) {
            self.name = name
            self.typeCharacter = typeCharacter
            
            switch self.typeCharacter {
            case.Fighter:
                self.weapon = Sword()
                self.life = 300
            case.Wizard:
                self.weapon = Sceptre()
                self.life = 500
            case.Giant:
                self.weapon = Stick()
                self.life = 250
            case.Dwarf:
                self.weapon = Ax()
                self.life = 150
            }
        }
        
        func play(character: Character, attack: Bool) {
            //var userChoice: Int
            
            //first display the character characteristics who's going to play
            description()
            
            
            // On réalise l'action demandée
            if attack == true {
                self.attack(character: character)
            } else {
                treat(character: character, point: weapon.damages)
            }
        }
        
        func get(damages: Int) {
            self.life = self.life - damages
            
            // Si la vie est négatif, on la met tout simplement à 0 pour dire que le personnage est mort
            if self.life < 0 {
                self.life = 0
            }
        }
        
        func attack(character: Character) {
            character.get(damages: self.weapon.damages)
        }
        
        func treat(character: Character, point: Int) {
            character.life += point
            
        }
        
        // Affiche la description de notre personnage à l'écran
        func description() {
            //print("Name : " + self.name)
            //print("Life : \(self.life)")
            //print("Damages of his weapon : \(self.weapon.damages)")
        }
        
        // Fonction permettant de demander à l'utilisateur d'entrer un nombre entier
        /*func inputInt() -> Int {
            while true {
                if let strData = readLine() { //approfondir cette expression
                    let test = Int(strData)
                    if test != nil {
                        return test!
                    } else {
                        print("Type an integer")
                    }
                }
            }
        }*/
    }
