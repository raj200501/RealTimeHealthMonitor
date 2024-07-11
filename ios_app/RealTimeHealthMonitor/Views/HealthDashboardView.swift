import SwiftUI

struct HealthDashboardView: View {
    @State private var healthData: [HealthData] = []

    var body: some View {
        List(healthData) { data in
            NavigationLink(destination: HealthDetailView(healthData: data)) {
                Text("\(data.type): \(data.value)")
            }
        }
        .onAppear {
            self.fetchHealthData()
        }
    }

    private func fetchHealthData() {
        // Fetch health data from the backend
    }
}

struct HealthDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        HealthDashboardView()
    }
}
