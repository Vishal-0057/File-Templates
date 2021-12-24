//
//  ___FILEHEADER___
//

import Foundation

public typealias OnDeinit = () -> Void
/// Inform the event of deinit.
public protocol DeinitInforming {
    var onDeinit: OnDeinit? { get set }
}
