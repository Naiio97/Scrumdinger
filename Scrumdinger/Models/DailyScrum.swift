import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [Attandee]
    var lenghtInMinutes: Int
    var lenghtInMinutesAsDouble: Double {
        get {
            Double(lenghtInMinutes)
        }
        set {
            lenghtInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lenghtInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attandee(name: $0) }
        self.lenghtInMinutes = lenghtInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attandee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name:String) {
            self.id = id
            self.name = name
        }
    }
    
    static var epmtyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lenghtInMinutes: 5, theme: .sky)
    }
}


extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Desing",
                   attendees: ["Cathey", "Daisy", "Simon", "Luke"],
                   lenghtInMinutes: 10,
                   theme: .seafoam),
        DailyScrum(title: "App Dev",
                   attendees: ["Nicolas", "Maros", "Krystof", "Filip"],
                   lenghtInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lenghtInMinutes: 5,
                   theme: .poppy),
    ]
}
