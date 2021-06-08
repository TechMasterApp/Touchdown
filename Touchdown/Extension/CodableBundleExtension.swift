//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Gaurav Bhasin on 3/3/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file:String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Couldn't locate \(file) in bundle.")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Couldn't load \(file) from bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Couldn't parse \(file) from bundle.")
        }
        
        // 5. Return the ready-to-use data
        return decodedData
    }
}

