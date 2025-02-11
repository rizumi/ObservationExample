import SwiftUI
import Combine

struct CombineView: View {
    @StateObject var viewModel: CombineViewModel
    
    init() {
        _viewModel = .init(wrappedValue: CombineViewModel())
    }
    
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
    CombineView()
}
