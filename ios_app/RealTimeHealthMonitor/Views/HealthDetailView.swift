import SwiftUI

struct HealthDetailView: View {
    var healthData: HealthData

    var body: some View {
        VStack {
            Text("Type: \(healthData.type)")
            Text("Value: \(healthData.value)")
            Text("Date: \(healthData.date)")
        }
        .navigationBarTitle("Health Detail")
    }
}

struct HealthDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HealthDetailView(healthData: HealthData(type: "Heart Rate", value: 72, date: Date()))
    }
}
