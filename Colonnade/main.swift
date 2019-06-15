//
//  main.swift
//  Colonnade
//
//  Created by Paul Malone on 6/11/19.
//  Copyright © 2019 Paul Malone. All rights reserved.
//

import Foundation

let app = Colonnade()

if CommandLine.argc > 1 {
    app.staticMode()
} else {
    print("Please provide a path to a csv file.")
}

