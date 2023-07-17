//
//  PostData.swift
//  Hacker News
//
//  Created by Brian Chukwuisiocha on 7/14/23.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

// identifiable protocol is needed to use the struct inside the list and for the list to know how to order them
struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
