//
//  Table.swift
//  Colonnade
//
//  Created by Paul Malone on 6/15/19.
//  Copyright © 2019 Paul Malone. All rights reserved.
//

import Foundation

struct Table {
    var headers = [String]()
    var rows = [[String]]()
    var tableString = String()
    
    init(string: String, delimiter: String) {
        // Split on \n
        var lines = string.splitOn(delimiter: "\n")
        // Split first row into headers
        headers = lines.removeFirst().splitOn(delimiter: delimiter)
//        print("Headers: \(headers)")
        // Split on comas
        for row in lines {
            let rowData = row.splitOn(delimiter: delimiter)
            var rowToAppend = [String]()
            for item in rowData {
                rowToAppend.append(String(item))
            }
            rows.append(rowToAppend)
        }
    }
    
    func mdTable() -> String{
        // string to build into table
        var tableString = String()
        
        // Build the header row like | header1 | header2 | header3 |\n
        tableString.append("| ")
        for header in headers {
            tableString.append(header)
            tableString.append(" |")
        }
        tableString.append("\n")
        
        // Build divider row like | --- | ------- | --- |\n
        tableString.append("|")
        for _ in headers {
            tableString.append(" --- |")
        }
        tableString.append("\n")
        
        // Loop through the rows and build each one like | data | data | data |\n
        for row in rows {
            if row.count >= headers.count {
                tableString.append("| ")
                for cell in row {
                    tableString.append(cell)
                    tableString.append(" |")
                }
                tableString.append("\n")
            }
        }
        
//        print(tableString)
        return tableString
    }
}

extension String {
    // Split and return an array of strings instead of substrings
    func splitOn(delimiter: String) -> [String] {
        var stringArray = [String]()
//        let substringSplit = self.split(separator: delimiter)
        let substringSplit = self.components(separatedBy: delimiter)
        for substring in substringSplit {
            stringArray.append(String(substring))
        }
        
        return stringArray
    }
}
