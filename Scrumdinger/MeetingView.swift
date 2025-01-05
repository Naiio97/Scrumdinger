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
            ProgressView(value: 5, total: 15)
            HStack {
                VStack {
                    Text("Second Elapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                VStack {
                    Text("Second Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
