//
//  PostViewModel.swift
//  igClone
//
//  Created by Christian Schmutte on 30.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

class PostViewModel {
    var post: Post
    lazy var posts: [Post] = {
        var newPosts = [Post]()
        for i in 1...12 {
            let newPost = Post(image: "ig_clone", description: "", comments: [Comment()], date: "", username: "chris", id: i)
            newPosts.append(newPost)
        }
        return newPosts
    }()
    
    init(post: Post) {
        self.post = post
        
    }
    func getImage() -> String{
        return post.image
    }
    func getUsername() -> String{
        return post.username
    }
    
    func getImages() -> [String] {
        var imgs = [String]()
        for item in posts {
            imgs.append(item.image)
        }
        return imgs
    }
    func getUsernames() -> [String] {
        var usernames = [String]()
        for item in posts {
            usernames.append(item.username)
        }
        return usernames
    }
    
    private func getPostsFromNetwork() {
        
    }
    
}
