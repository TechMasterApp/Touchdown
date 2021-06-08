//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Gaurav Bhasin on 3/3/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
