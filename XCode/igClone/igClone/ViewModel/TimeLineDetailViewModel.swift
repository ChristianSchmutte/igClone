//
//  TimeLineDetailViewModel.swift
//  igClone
//
//  Created by Christian Schmutte on 31.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

class TimeLineDetailViewModel: ObservableObject {
    func retrievePosts() -> [Post]{
        var newPosts = [Post]()
        for i in 1...12 {
            let newPost = Post(image: "ig_clone", description: "", comments: [Comment()], date: "", username: "chris", id: i)
            newPosts.append(newPost)
        }
        return newPosts
    }
}
