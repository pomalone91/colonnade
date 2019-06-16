//
//  Colonnade.swift
//  Colonnade
//
//  Created by Paul Malone on 6/15/19.
//  Copyright © 2019 Paul Malone. All rights reserved.
//

import Foundation

struct Colonnade {
    
    func staticMode() {
        let url = ConsoleIO.getUrl()
        guard let contents = ConsoleIO.readFile(at: url) else { return }
        let table = Table(string: contents, delimiter: ConsoleIO.getDelimiter())
        print(table.mdTable())
//        print(ConsoleIO.getArgFlag())
        
//        // Switch delimiters
//        if let flag = ConsoleIO.getArgFlag() {
//            switch flag {
//            case "d":
//                print("Getting delimiter now")
//                print("\"\(ConsoleIO.getDelimiter())\"")
//            default:
//                print("invalid argument flag")
//            }
//        }
    }
}
