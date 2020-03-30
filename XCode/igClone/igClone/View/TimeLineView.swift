//
//  TimeLineView.swift
//  igClone
//
//  Created by Christian Schmutte on 30.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import SwiftUI

struct TimeLineView: View {
    var images: [String]
    var lines : [[String]]
    
    init(images: [String]) {
        self.images = images
        self.lines = images.chunked(into: 3)
    }
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 2){
                ForEach(lines, id: \.self) { line in
                    LineView(images: line)
                }
            }
        }
        
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView(images: [
        "ig_clone","ig_clone","ig_clone",
        "ig_clone"])
    }
}
