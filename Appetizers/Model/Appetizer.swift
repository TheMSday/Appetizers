//
//  Appetizer.swift
//  Appetizers
//
//  Created by Mehmet Güngörmüş on 15.07.25.
//

import Foundation

struct Appetizer: Decodable, Identifiable { //Created the Apetizer object based on the Json that we are getting from the server.
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {  //We created our response object to handle the structure of the Json,
                           //this is necessary when were using Codable.
    let request: [Appetizer]
}

struct MockData {
    static let sampleApetizer = Appetizer(id: 0001,
                                         name: "Test Apetizer",
                                         description: "this is the description for my Apetizer.",
                                         price: 9.99,
                                         imageURL: "",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 99)
    
    static let apetizers = [sampleApetizer, sampleApetizer, sampleApetizer, sampleApetizer]
}
