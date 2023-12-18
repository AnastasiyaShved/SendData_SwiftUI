//
//  StartView.swift
//  SendData_SwiftUI
//
//  Created by Apple on 19.12.23.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        //собираем в один блок ексколько экремпляров (например несколько Views)
        
        Group {
            if user.isRegister {
                TimerView()
            } else {
                RegisterView()
            }
        }
    }
}

#Preview {
    StartView()
        .environmentObject(UserManager())
}
