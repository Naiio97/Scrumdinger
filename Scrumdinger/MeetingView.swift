//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Nicolas Bureš on 05.01.2025.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
