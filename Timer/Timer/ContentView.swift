//
//  ContentView.swift
//  Timer
//
//  Created by Marko Klemetti on 7.11.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stopwatch = Stopwatch()

    var body: some View {
        VStack {
            Text(String(format: "%.1f", stopwatch.secondsElapsed))
                .font(.system(size: 40))
                .padding(.top, 200)
                .padding(.bottom, 100)
            
            if stopwatch.mode == .stopped {
                Button(action: {self.stopwatch.start()}) {
                    TimerButton(label: "Start", buttonColor: .green)
                }
            }
            if stopwatch.mode == .running {
                Button(action: { self.stopwatch.stop() }) {
                    TimerButton(label: "Stop", buttonColor: .red)
                }
            }
            if stopwatch.mode == .paused {
                Button(action: {self.stopwatch.reset()}) {
                    TimerButton(label: "Reset", buttonColor: .gray)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
