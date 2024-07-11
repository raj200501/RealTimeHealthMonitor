import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HealthDashboardView()
                .navigationBarTitle("Health Monitor")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
