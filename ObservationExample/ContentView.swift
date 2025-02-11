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
                    }
                }
                Section("UIKit") {
                    Button("Observation") {
                    }
                    Button("Combine") {
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
