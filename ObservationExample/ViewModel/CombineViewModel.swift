import Combine

final class CombineViewModel: ObservableObject {
    @Published private(set) var counter = 0

    func onTapMinus() {
        counter -= 1
    }

    func onTapPlus() {
        counter += 1
    }
}
