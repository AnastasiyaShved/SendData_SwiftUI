//
//  TimerView.swift
//  SendData_SwiftUI
//
//  Created by Apple on 19.12.23.
//

import SwiftUI

struct TimerView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hello, \(user.name)!")
                .font(.title)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            Spacer()
            ButtonView()
                .environmentObject(timer)
        }
    }
}

struct ButtonView: View {
    
    @EnvironmentObject var timer: TimeCounter

    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
        
        
        
        
    }
}

#Preview {
    TimerView()
        .environmentObject(UserManager())
}