//
//  StoryPreviewView.swift
//  igClone
//
//  Created by Christian Schmutte on 31.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import SwiftUI

struct StoryPreviewView: View {
        var body: some View {
        HStack{
            VStack {
                Image("ig_clone")
                .resizable()
                .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .shadow(radius: 3)
                    .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                    
                Text("Your Stories")
                    .font(.caption)
            }
        }
    }
}

struct StoryPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        StoryPreviewView()
    }
}
