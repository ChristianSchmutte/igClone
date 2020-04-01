//
//  HomeView.swift
//  igClone
//
//  Created by Christian Schmutte on 31.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    Button(action: {}){
                        Image("camera_icon")
                        .resizable()
                        .frame(width: 30, height: 30)
                    }.padding()
                    
                    Spacer()

                    Text("IG-Clone")
                        .font(.largeTitle)
                        .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.semibold)

                    Spacer()


                    Button(action: {}){
                        Image("paper_plane")
                        .resizable()
                        .frame(width: 30, height: 30)
                    }.padding()
                }.frame(height: 50)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        StoryPreviewView()
                        StoryPreviewView()
                        StoryPreviewView()
                        StoryPreviewView()
                        StoryPreviewView()
                        StoryPreviewView()
                    }
                }.frame(height: 70)
                
                
                
                TimeLineDetailView(model: TimeLineDetailViewModel())
                
                BottomView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
