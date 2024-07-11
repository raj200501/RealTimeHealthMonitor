import Foundation

struct HealthData: Identifiable {
    var id = UUID()
    var type: String
    var value: Double
    var date: Date
}
