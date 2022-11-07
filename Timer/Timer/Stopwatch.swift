//
//  Stopwatch.swift
//  Timer
//
//  Created by Marko Klemetti on 7.11.2022.
//

import SwiftUI

enum stopWatchMode {
    case running
    case stopped
    case paused
}

class Stopwatch: ObservableObject {
    @Published var secondsElapsed = 0.0
    @Published var mode: stopWatchMode = .stopped

    var timer = Timer()
    
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.secondsElapsed += 0.1
        }
    }
    
    func reset() {
        secondsElapsed = 0
        mode = .stopped
    }
    
    func stop() {
        timer.invalidate()
        mode = .paused
    }
}
