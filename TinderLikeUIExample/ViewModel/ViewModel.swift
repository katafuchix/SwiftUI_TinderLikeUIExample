//
//  ViewModel.swift
//  TinderLikeUIExample
//
//  Created by cano on 2023/01/09.
//

import SwiftUI

// View model and it holds all user data...

class ViewModel: ObservableObject {
    
    // Store All the fetched Users here...
    // Since we're building UI so using sample Users here....
    @Published var fetched_users: [User] = []
    
    @Published var displaying_users: [User]?
    
    init(){
        
        // fetching users
        fetched_users = [
            User(name: "Natalia", place: "Vadalia NYC", profilePhoto: "User1"),
            User(name: "Elisa", place: "Central Park NYC", profilePhoto: "User2"),
            User(name: "Jasmine", place: "Metropolitan Museum NYC", profilePhoto: "User3"),
            User(name: "Zahra", place: "Liberty NYC", profilePhoto: "User4"),
            User(name: "Angelina", place: "Empier State NYC", profilePhoto: "User5"),
            User(name: "Brittany", place: "Time Square NYC", profilePhoto: "User6")
        ]
        
        // storing it in displaying users..
        // what is displaying users?
        // it will be updated/removed based on user interaction to reduce memory usage...
        // and the same time we need all the fetched users data....
        displaying_users = fetched_users
    }
    
    // retreiving index
    func getIndex(user: User) -> Int {
        
        let index = displaying_users?.firstIndex(where: { currentUser in
            return user.id == currentUser.id
        }) ?? 0
        
        return index
    }
}
