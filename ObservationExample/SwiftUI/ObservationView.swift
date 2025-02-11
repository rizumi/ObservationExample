import Observation
import SwiftUI

struct ObservationView: View {
    @State var viewModel = ObservationViewModel()
    
    var body: some View {
        HStack(spacing: 20) {
            Button {
                viewModel.onTapMinus()
            } label: {
                Image(systemName: "minus")
            }

            Text("\(viewModel.counter)")
                .font(.title)
            
            Button {
                viewModel.onTapPlus()
            } label: {
                Image(systemName: "plus")
            }
        }
        .padding()
    }
}

@Observable
final class ObservationViewModel {
    private(set) var counter = 0
    
    func onTapMinus() {
        counter -= 1
    }
    
    func onTapPlus() {
        counter += 1
    }
}

#Preview {
    ObservationView()
}
