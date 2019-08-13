//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {    
    // Check verticals
    for x in 0..<3 {
        var numMarks = 0
        for y in 0..<3 {
            if board[(x, y)] == player {
                numMarks += 1
            }
        }
        if numMarks == 3 {
            return true
        }
    }
    
    // Check horizontals
    for y in 0..<3 {
        var numMarks = 0
        for x in 0..<3 {
            if board[(x, y)] == player {
                numMarks += 1
            }
        }
        if numMarks == 3 {
            return true
        }
    }
    
    // Check diagnoals
    let ltr: [Coordinate] = [(0,0), (1,1), (2,2)]
    var numLTRMatches = 0
    for coord in ltr {
        if board[coord] == player {
            numLTRMatches += 1
        }
    }
    if numLTRMatches == 3 {
        return true
    }
    
    let rtl: [Coordinate] = [(2,0), (1,1), (0,2)]
    var numRTLMatches = 0
    for coord in rtl {
        if board[coord] == player {
            numRTLMatches += 1
        }
    }
    if numRTLMatches == 3 {
        return true
    }
    
    return false
}
