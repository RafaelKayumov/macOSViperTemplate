import Foundation

class BasePresenter: BaseViewOutput {

    private var viewReadyCallback: (() -> Void)?

    func viewDidGetReady() {
        viewReadyCallback?()
        viewReadyCallback = nil
    }

    func viewWillAppear() {
    }
}

//setup view ready callback
extension BasePresenter {

    func doWhenViewGetsReady(_ block: @escaping () -> Void) {
        viewReadyCallback = block
    }
}
