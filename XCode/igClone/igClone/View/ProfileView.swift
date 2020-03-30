//
//  ProfileView.swift
//  igClone
//
//  Created by Christian Schmutte on 30.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var model = ProfileViewModel()
    var body: some View {
        
        GeometryReader { geometry in
            VStack{
                HStack {
                    Spacer()
                    Text(NSLocalizedString("username", comment: ""))
                        .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.semibold)
                        .padding(.leading, 10)
                        .frame(alignment: .center)
                    Button(action: {}){
                        Image("arrow-down")
                        .resizable()
                        .frame(width: 12, height: 12)
                    }.padding(.top, 5)
                    Spacer()
                    Button(action: {}){
                        Image("menu-bar")
                        .resizable()
                        .frame(width: 20, height: 20)
                    }.padding()
                }
                HStack{
                    VStack{
                        Image("ig_clone")
                        .resizable()
                        .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .shadow(radius: 3)
                            .overlay(Circle().stroke(Color.pink, lineWidth: 1))
                        
                        Text("Your Name")
                            .foregroundColor(Colors.lightBlueColor)
                            .fontWeight(.semibold)
                    }.padding(.leading, 10)
                    
                    VStack{
                        Text("10")
                        .font(.system(size: 30))
                            .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.bold)
                        .fixedSize(horizontal: true, vertical: true)
                        Text("Publications")
                        .font(.system(size: 13))
                            .foregroundColor(Colors.lightBlueColor)
                        .fixedSize(horizontal: true, vertical: true)
                    }.padding(.leading, 30)
                    
                    VStack{
                        Text("100")
                        .font(.system(size: 30))
                            .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.bold)
                            .lineLimit(nil)
                            .fixedSize(horizontal: true, vertical: true)
                        Text("Followers")
                        .font(.system(size: 13))
                            .foregroundColor(Colors.lightBlueColor)
                        .lineLimit(nil)
                            .fixedSize(horizontal: true, vertical: true)
                    }.padding()
                    
                    VStack{
                        Text("1000")
                        .font(.system(size: 30))
                            .foregroundColor(Colors.lightBlueColor)
                        .fontWeight(.bold)
                        
                        Text("Following")
                        .font(.system(size: 13))
                            .foregroundColor(Colors.lightBlueColor)
                    }
                    
                }.frame(height: 100)
                .padding(.leading)
                
                 Button(action: {}){
                    Text("Edit Profile")
                    .fontWeight(.bold)
                        .foregroundColor(Colors.lightBlueColor)
                }.frame(width: 400)
                .padding()

                Divider()
                
                TimeLineView(images: [
                "ig_clone","ig_clone","ig_clone",
                "ig_clone"]).padding(.leading, 10)
            }.padding(.trailing, 20)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
