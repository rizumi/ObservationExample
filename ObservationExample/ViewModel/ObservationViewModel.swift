import Observation

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
