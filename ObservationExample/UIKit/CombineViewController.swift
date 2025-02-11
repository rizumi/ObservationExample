import UIKit
import SwiftUI
import Combine

final class CombineViewController: UIViewController {

    private let viewModel = CombineViewModel()
    private var cancellables: Set<AnyCancellable> = []

    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!

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

        viewModel.$counter
            .sink { [weak self] count in
                self?.counterLabel.text = "\(count)"
            }
            .store(in: &cancellables)
    }
}

struct CombineViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = CombineViewController

    func makeUIViewController(context: Context) -> CombineViewController {
        .init(nibName: "CombineViewController", bundle: nil)
    }

    func updateUIViewController(_ uiViewController: CombineViewController, context: Context) {
    }
}
