//
//  ___FILEHEADER___
//

import Foundation
import UIKit

public typealias CoordinatorDidFinish = (_ coordinator: CoordinatorType) -> Void

public protocol CoordinatorType {
    /// Default flow start method.
    func start()

    /// Flow finish closure
    var didFinishFlow: CoordinatorDidFinish? { get set }
}

class Coordinator: CoordinatorType {
    func start() {

    }

    var didFinishFlow: CoordinatorDidFinish?
}
