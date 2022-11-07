//
//  TimerButton.swift
//  Timer
//
//  Created by Marko Klemetti on 7.11.2022.
//

import SwiftUI

struct TimerButton: View {
    let label: String
    let buttonColor: Color
    
    var body: some View {
        Text(label)
            .foregroundColor(.white)
            .padding(.vertical, 20)
            .padding(.horizontal, 90)
            .background(buttonColor)
            .cornerRadius(10)
    }
}
