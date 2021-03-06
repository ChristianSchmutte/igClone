//
//  TimeLineDetailView.swift
//  igClone
//
//  Created by Christian Schmutte on 31.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import SwiftUI

struct TimeLineDetailView: View {
    var model: TimeLineDetailViewModel
    
    var body: some View {
         ScrollView{
                   VStack(alignment: .leading, spacing: 2){
                    ForEach(self.model.retrievePosts(), id: \.id) { post in
                        PostDetailView(model: PostViewModel(post: post))
                        .padding(.bottom, 20)
                    }
                   }
               }
    }
}

struct TimeLineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineDetailView(model: TimeLineDetailViewModel())
    }
}
