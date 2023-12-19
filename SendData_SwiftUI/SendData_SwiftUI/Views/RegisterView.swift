//
//  RegisterView.swift
//  SendData_SwiftUI
//
//  Created by Apple on 19.12.23.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var user: UserManager
    @State var name = ""
    
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                
                if  name.count < 5 {
                    Text("\(name.count)")
                        .foregroundColor(.red)
                } else {
                    Text("\(name.count)")
                        .foregroundColor(.green)
                }
                Spacer()
            }
            if name.count < 5 {
                Button(action: registerUser) {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }.disabled(true)
            } else {
                Button(action: registerUser) {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }.disabled(false)
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty, name.count >= 5 {
            user.name = name
            user.isRegister.toggle()
            
        }
    }
    
}

#Preview {
    RegisterView()
        .environmentObject(UserManager())
}

