import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("SwiftUI") {
                    NavigationLink("Observation") {
                        ObservationView()
                    }
                    NavigationLink("Combine") {
                        CombineView()
                    }
                }
                Section("UIKit") {
                    NavigationLink("Observation") {
                        ObservationViewControllerRepresentable()
                    }
                    NavigationLink("Combine") {
                        CombineViewControllerRepresentable()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
