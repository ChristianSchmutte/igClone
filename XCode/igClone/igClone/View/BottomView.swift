//
//  BottomView.swift
//  igClone
//
//  Created by Christian Schmutte on 31.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import SwiftUI

struct BottomView: View {
    
    var body: some View {
        HStack{
             Button(action: {}){
                 Image("home_icon")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
             
             Spacer()
             
             Button(action: {}){
                 Image("search_icon")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
             
             Spacer()
             
             Button(action: {}){
                 Image("add_icon")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
             
             Spacer()
             
             Button(action: {}){
                 Image("heart_icon")
                 .resizable()
                 .frame(width: 30, height: 30)
             }.padding()
             
             Spacer()
             
             Button(action: {}){
                 Image("ig_clone")
                 .resizable()
                 .frame(width: 30, height: 30)
                    .clipShape(Circle())
             }.padding()
        }.frame(height: 35)
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
