//
//  PostPreviewView.swift
//  InstagramClone
//
//  Created by ilario salatino on 30.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct PostPreviewView: View {
    let model = PostViewModel(post: dummyPost)
    let image: String
    
    var body: some View {
        //Image(self.model.getImage())
        Image(self.model.getImage())
        .resizable()
        .frame(width: 136, height: 136)
    }
}

struct PostPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PostPreviewView(image: "ic_clone")
    }
}
