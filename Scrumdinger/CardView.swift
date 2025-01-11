import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack (alignment: .leading){
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityValue("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lenghtInMinutes)", systemImage: "clock")
                    .accessibilityValue("\(scrum.lenghtInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
                    
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .accessibilityElement(children: .ignore)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
