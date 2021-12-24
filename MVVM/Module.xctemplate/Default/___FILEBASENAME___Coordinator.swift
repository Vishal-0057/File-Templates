//
//  ___FILEHEADER___
//

import Foundation
import UIKit

protocol ___VARIABLE_moduleName:identifier___CoordinatorType: AnyObject {
//    func profileTapped()
}

class ___VARIABLE_moduleName:identifier___Coordinator: ___VARIABLE_moduleName:identifier___CoordinatorType {

    private weak var viewController: ___VARIABLE_moduleName:identifier___ViewController?
    private var didFinishFlow: CoordinatorDidFinish

    required init(navigationController: UINavigationController,
                  completion: @escaping CoordinatorDidFinish) {

        self.didFinishFlow = completion
//        super.init(navigationController: navigationController, style: .horizontalStack)
    }
}

// MARK: Starting & Coordinator Confirming

//extension ___VARIABLE_moduleName:identifier___Coordinator: Coordinator {
//    override func start() {
//        viewController = create___VARIABLE_moduleName:identifier___ViewController()
//        if let viewController = viewController {
//            viewController.onDeinit = { [weak self] in
//                guard let self = self else { return }
//                self.didFinishFlow?(self)
//            }
//            pushViewController(viewController, animated: true)
//        }
//    }
//}

extension ___VARIABLE_moduleName:identifier___Coordinator {
    //    func profileTapped() {
    //    }
}


private extension ___VARIABLE_moduleName:identifier___Coordinator {

    func create___VARIABLE_moduleName:identifier___ViewController() -> ___VARIABLE_moduleName:identifier___ViewController {

        let service = ___VARIABLE_moduleName:identifier___Service()
        let repository = ___VARIABLE_moduleName:identifier___Repository(service)
        let viewModel = ___VARIABLE_moduleName:identifier___ViewModel(repository)

        return ___VARIABLE_moduleName:identifier___ViewController(viewModel, coordinator: self)
    }
}
