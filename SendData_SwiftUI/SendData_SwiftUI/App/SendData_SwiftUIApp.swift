//
//  SendData_SwiftUIApp.swift
//  SendData_SwiftUI
//
//  Created by Apple on 19.12.23.
//

import SwiftUI

@main
struct SendData_SwiftUIApp: App {
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StartView()
            //определяем с какого экрана стартуем
        
                .environmentObject(user)
            /// все положенное в данную среду булет доступно из любого места в приложении
        }
    }
}
