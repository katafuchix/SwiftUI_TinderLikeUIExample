//
//  User.swift
//  TinderLikeUIExample
//
//  Created by cano on 2023/01/09.
//

import SwiftUI

// User Model
struct User: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var place: String
    var profilePhoto: String
}
