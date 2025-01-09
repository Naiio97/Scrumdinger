import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lenghtInMinutes: Int
    var theme: Theme
}


extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Desing",
                   attendees: ["Cathey", "Daisy", "Simon", "Luke"],
                   lenghtInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "AppDev",
                   attendees: ["Nicolas", "Maros", "Krystof", "Filip"],
                   lenghtInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Desing",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lenghtInMinutes: 5,
                   theme: .poppy),
    ]
}
