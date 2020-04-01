//
//  PostDetailView.swift
//  igClone
//
//  Created by Christian Schmutte on 31.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    
    let model: PostViewModel

    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                
                Image("ig_clone")
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .shadow(radius: 3)
                .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                .padding(.leading, 5)
                
                VStack(alignment: .leading){
                    Text(self.model.getUsername()).font(.headline).foregroundColor(Colors.lightBlueColor)
                    Text("Text downside").foregroundColor(Color(.lightGray)).font(.subheadline)
                }
                
                Spacer()
                
                Button(action: {}){
                    Image("threeDots")
                    .resizable()
                    .frame(width: 20, height: 20)
                }
                .padding(.trailing, 5)
            }
            
            Image(self.model.getImage())
            .resizable()
            .frame(width: 415, height: 415)
            
            HStack{
                Button(action: {}){
                    Image("heart")
                    .resizable()
                    .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                
                Button(action: {}){
                    Image("comment")
                    .resizable()
                    .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                
                Button(action: {}){
                    Image("paper-plane")
                    .resizable()
                    .frame(width: 30, height: 30)
                }.padding(.leading, 5)
                
                Spacer()
                
            }
            
            HStack{
            Button(action: {}){
                Image("heart_icon")
                .resizable()
                .frame(width: 30, height: 30)
            }.padding(.leading, 5)
            
            Button(action: {}){
                Image("speechbubble")
                .resizable()
                .frame(width: 30, height: 30)
            }.padding(.leading, 5)
            
            Button(action: {}){
                Image("paper_plane")
                .resizable()
                .frame(width: 30, height: 30)
            }.padding(.leading, 5)
            
            Spacer()
            
            Button(action: {}){
                Image("flag")
                .resizable()
                .frame(width: 30, height: 30)
            }.padding(.trailing, 5)
           }
            VStack(alignment: .leading){
                Text("Liked by X and Y").foregroundColor(Colors.lightBlueColor)
                Text("See all comments").foregroundColor(Color(.lightGray)).font(.subheadline)
            }.padding(.leading, 5)
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(model: PostViewModel(post: dummyPost))
    }
}
