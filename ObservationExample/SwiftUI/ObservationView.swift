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

#Preview {
    ObservationView()
}
