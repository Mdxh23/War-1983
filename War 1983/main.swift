//
//  main.swift
//  War 1983
//
//  Created by Madison Lynae' Gwen Ashwood on 11/9/23.
//

import Foundation

//print("Hello, World!")

// Define your game logic here

// Define the "I Declare War" game logic here
func playGame() {
    let deck = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    let suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
    
    var player1Deck = deck.shuffled()
    var player2Deck = deck.shuffled()
    
    while !player1Deck.isEmpty && !player2Deck.isEmpty {
        let player1Card = player1Deck.removeFirst()
        let player2Card = player2Deck.removeFirst()
        
        print("Player 1: \(player1Card) of \(suits.randomElement()!)")
        print("Player 2: \(player2Card) of \(suits.randomElement()!)")
        print("-------------------")
    }
    
    if player1Deck.isEmpty {
        print("Player 2 wins!")
    } else {
        print("Player 1 wins!")
    }
}

// Entry point of the program
func main() {
    playGame()
}

// Run the main function
main()



