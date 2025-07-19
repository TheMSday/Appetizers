//
//  APError.swift
//  Appetizers
//
//  Created by Mehmet Güngörmüş on 15.07.25.
//

import Foundation


enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
