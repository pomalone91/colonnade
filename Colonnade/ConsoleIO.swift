//
//  ConsoleIO.swift
//  Colonnade
//
//  Created by Paul Malone on 6/15/19.
//  Copyright © 2019 Paul Malone. All rights reserved.
//

import Foundation

struct ConsoleIO {
    static func getUrl() -> URL {
        // Attempt to parse URL from args
        let urlPath = CommandLine.arguments[1]
        let url = URL(fileURLWithPath: urlPath)
        return url
    }
    
    static func readFile(at url: URL) -> String? {
        var contents = String()
        do {
            contents = try String(contentsOf: url)
        } catch {
            contents = "Could not read file"
//            print(contents)
        }
        return contents
    }
}
