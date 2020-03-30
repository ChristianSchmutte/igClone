//
//  PostPreviewViewModel.swift
//  igClone
//
//  Created by Christian Schmutte on 30.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import Foundation

class PostPreviewViewModel {
    var postPreview: PostPreview?
    
    func getImage() -> String{
        return postPreview!.imageUrl
    }
}
