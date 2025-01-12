//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Nicolas Bureš on 12.01.2025.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.epmtyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")){
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lenghtInMinutesAsDouble, in: 5...30, step: 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lenghtInMinutes) minutes")
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                HStack{
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation{
                            let attendee = DailyScrum.Attandee(name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

struct DetailEditView_Previes: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}

