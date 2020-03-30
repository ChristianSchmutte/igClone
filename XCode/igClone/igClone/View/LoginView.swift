//
//  LoginView.swift
//  igClone
//
//  Created by Christian Schmutte on 29.03.20.
//  Copyright © 2020 Christian Schmutte. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @ObservedObject var model = LogInViewModel()
    
    
    var body: some View {
       VStack{
            Image("ig_clone")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.clear, lineWidth: 0))
            .shadow(radius: 5)
            .padding(.bottom, 75)
           Text(NSLocalizedString("LI_title", comment: ""))
               .font(.largeTitle)
            .foregroundColor(Colors.lightBlueColor)
               .fontWeight(.semibold)
               .padding(.bottom, 20)
           TextField(NSLocalizedString("username", comment: ""), text: $username)
               .padding()
            .background(Colors.lightGreyColor)
               .cornerRadius(5.0)
               .padding(.bottom, 20)
           SecureField(NSLocalizedString("password", comment: ""), text: $password)
               .padding()
            .background(Colors.lightGreyColor)
               .cornerRadius(5.0)
               .padding(.bottom, 20)
           Button(action: {
                if (self.password.count == 0 || self.username.count == 0){
                    
                    self.model.alertModel = AlertModel(
                        title: NSLocalizedString("LI_alert_title", comment: ""),
                        message: NSLocalizedString("LI_error_empty_message", comment: ""),
                        button: NSLocalizedString("alert_button_ok", comment: ""),
                        show: true)
                    
                } else {
                    self.model.logIn(username: self.username, password: self.password)
                }
           }){
               Text(NSLocalizedString("LI_button_title", comment: ""))
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Colors.lightBlueColor)
                .cornerRadius(15.0)
           }
       }.padding()
        .alert(isPresented: self.$model.alertModel.show ) { () -> Alert in
                Alert(title: Text(self.model.alertModel.title), message: Text(self.model.alertModel.message), dismissButton: .default(Text(self.model.alertModel.button)))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
