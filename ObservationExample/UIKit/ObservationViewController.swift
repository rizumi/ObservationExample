import UIKit
import SwiftUI
import Observation

final class ObservationViewController: UIViewController {

    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    private let viewModel = ObservationViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        minusButton
            .addAction(.init(handler: { [weak self] _ in
                self?.viewModel.onTapMinus()
            }), for: .touchUpInside)

        plusButton
            .addAction(.init(handler: { [weak self] _ in
                self?.viewModel.onTapPlus()
            }), for: .touchUpInside)
        
        trackingObservations()
    }
    
    private func trackingObservations() {
        withObservationTracking { [weak self] in
            guard let self else { return }
            counterLabel.text = "\(viewModel.counter)"
        } onChange: {
            Task { @MainActor [weak self] in
                self?.trackingObservations()
            }
        }
    }
}

struct ObservationViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = ObservationViewController

    func makeUIViewController(context: Context) -> ObservationViewController {
        .init(nibName: "ObservationViewController", bundle: nil)
    }

    func updateUIViewController(_ uiViewController: ObservationViewController, context: Context) {
    }
}
