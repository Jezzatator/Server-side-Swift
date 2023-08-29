//
//  File.swift
//  
//
//  Created by Jérémie - Ada on 29/08/2023.
//

import Foundation
import Vapor

struct HotelsQuery: Content {
    let sort: String
    let search: String
}
