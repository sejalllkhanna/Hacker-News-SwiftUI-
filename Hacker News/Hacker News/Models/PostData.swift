//
//  PostData.swift
//  Hacker News
//
//  Created by sejal khanna on 12/10/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits:  [Post]
}

struct Post: Decodable , Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

